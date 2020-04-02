#!/usr/bin/env sh
gradle release
mvn deploy:deploy-file -Dmaven.test.skip=true -Dfile=./build/libs/esl-client-0.9.3-SNAPSHOT.jar -DgroupId=org.freeswitch.esl.client -DartifactId=org.freeswitch.esl.client -Dversion=0.9.3-SNAPSHOT -Dpackaging=jar -DrepositoryId=nexus-snapshots -Durl=https://repo.souche-inc.com/repository/snapshots/

# -Dmaven.test.skip=true                              //跳过编译、测试
# -Dfile=D:\MvnProject\service-mvn-1.0.0.jar          //jar包文件地址,绝对路径
# -DgroupId=pri.roy.mvn.test                          //gruopId--pom坐标，自定义
# -DartifactId=mvn-api                                //artifactId--pom坐标，自定义
# -Dversion                                           //版本号
# -Dpackaging                                         //打包方式
# -DrepositoryId                                      //远程库服务器ID
# -Durl                                               //远程库服务器地址