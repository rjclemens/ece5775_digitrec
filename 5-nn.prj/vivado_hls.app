<AutoPilot:project xmlns:AutoPilot="com.autoesl.autopilot.project" projectType="C/C++" name="5-nn.prj" top="digitrec">
    <Simulation argv="">
        <SimFlow name="csim" setup="false" optimizeCompile="false" clean="false" ldflags="" mflags=""/>
    </Simulation>
    <includePaths/>
    <libraryFlag/>
    <files>
        <file name="../../data" sc="0" tb="1" cflags=" "/>
        <file name="../../digitrec_test.cpp" sc="0" tb="1" cflags=" -DK_CONST=5"/>
        <file name="digitrec.cpp" sc="0" tb="false" cflags="-DK_CONST=5"/>
    </files>
    <solutions>
        <solution name="solution1" status=""/>
    </solutions>
</AutoPilot:project>

