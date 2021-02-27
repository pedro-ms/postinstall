#!/usr/bin/env bash
BASHRC=~/.bashrc

echo "Creating aliases..."

echo "alias src='source ~/.bashrc'" >> $BASHRC
echo "alias jv='java -version'" >> $BASHRC
echo "alias j8h='export JAVA_HOME='/usr/lib/jvm/java-8-openjdk';export path=$JAVA_HOME/bin:$path;echo JAVA_PATH = $JAVA_HOME'"  >> $BASHRC
echo "alias j11h='export JAVA_HOME='/usr/lib/jvm/java-11-openjdk';export path=$JAVA_HOME/bin:$path;echo JAVA_PATH = $JAVA_HOME'" >> $BASHRC
echo "alias j8='sudo archlinux-java set java-8-openjdk;jv;j8h'" >> $BASHRC
echo "alias j11='sudo archlinux-java set java-11-openjdk;jv;j11h'" >> $BASHRC

echo "Aliases created."