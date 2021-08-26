//==========================================================================
//digitrec.cpp
//==========================================================================
// @brief: A k-nearest-neighbors implementation for digit recognition

#include "digitrec.h"
#include <algorithm>

//----------------------------------------------------------
// Top function
//----------------------------------------------------------
// @param[in] : input - the testing instance
// @return : the recognized digit (0~9)

bit4 digitrec( digit input ) 
{
  #include "training_data.h"

  // This array stores K minimum distances per training set
  bit6 knn_set[10][K_CONST];

  // Initialize the knn set
  INIT: 
  for ( int i = 0; i < 10; ++i )
    #pragma HLS unroll
    INIT2:  
    for ( int k = 0; k < K_CONST; ++k )
      #pragma HLS unroll
      // Note that the max distance is 49
      knn_set[i][k] = 50; 

  MODIFY1:
  for ( int i = 0; i < TRAINING_SIZE; ++i ) {
  #pragma HLS pipeline
    MODIFY2:
    for ( int j = 0; j < 10; j++ ) {
    #pragma HLS unroll //should decrease latency by factor of 10
    
  // Read a new instance from the training set
      digit training_instance = training_data[j * TRAINING_SIZE + i];
      // Update the KNN set
      update_knn( input, training_instance, knn_set[j] );
    }
  } 

  // Compute the final output
  return knn_vote( knn_set ); 
}

bit6 bitcount(digit n){
	bit6 count = 0;
	
	BITCOUNT:
	for(unsigned char i=0; i<49; i++){
	
	//#pragma HLS pipeline //II=1
	
	#pragma HLS unroll //you dont need 49 cycles to do this, yet you might not have 49 adders
	//this results in latency 0 :)
	
		count += (n >> i) & 1;
	}
	
	return count;
}

//-----------------------------------------------------------------------
// update_knn function
//-----------------------------------------------------------------------
// Given the test instance and a (new) training instance, this
// function maintains/updates an array of K minimum
// distances per training set.

// @param[in] : test_inst - the testing instance
// @param[in] : train_inst - the training instance
// @param[in/out] : min_distances[K_CONST] - the array that stores the current
//                  K_CONST minimum distance values per training set

void update_knn( digit test_inst, digit train_inst, bit6 min_distances[K_CONST] )
{
	#pragma HLS pipeline //pipeline the entire function
	//#pragma HLS inline 
	#pragma HLS dependence variable=min_distances array \
	inter false	
	
	bit6 distance = bitcount(test_inst ^ train_inst); //latency=0 after fully unrolled
	
	bit6 max = 0;
	bit4 i_val;
	
	#pragma HLS array_partition variable min_distances complete
	UPDATEKNN:
	for(int i=0; i<K_CONST; i++){
		#pragma HLS unroll
		if(min_distances[i] > max){max = min_distances[i]; i_val = i;}
	}
	
	if(distance < min_distances[i_val]){min_distances[i_val] = distance;}
}


//-----------------------------------------------------------------------
// knn_vote function
//-----------------------------------------------------------------------
// Given 10xK minimum distance values, this function 
// finds the actual K nearest neighbors and determines the
// final output based on the most common digit represented by 
// these nearest neighbors (i.e., a vote among KNNs). 
//
// @param[in] : knn_set - 10xK_CONST min distance values
// @return : the recognized digit
// 

bit4 knn_vote( bit6 knn_set[10][K_CONST] )
{
  // pipelining for loops with LOTS of code. unrolling it would consume too much physical space on the board
  // so instead we pipeline it to reduce latency. you can use pipeline on any loop
 
	bit4 i_val;
	int min = INT_MAX;
	int sum;
	
	KNNVOTE:
	#pragma HLS array_partition variable knn_set complete dim=1 
	
	//ten arrays, each size K_CONST, since each RAM has two parts; can be accessed twice per cycle
	//you could partiiton with factor of 5 instead of 10 if you only access array once per loop
	
	for(bit4 i=0; i<10; i++){
		#pragma HLS unroll //completely unroll all ten iterations
		sum = 0;
		KNNVOTE2:
		for(bit4 j=0; j<K_CONST; j++){
			#pragma HLS unroll
			sum += knn_set[i][j];
		}
		if(sum<min){min = sum; i_val = i;}
	}
	
	return i_val;


}
