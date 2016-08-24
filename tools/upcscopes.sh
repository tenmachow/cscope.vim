#!/bin/sh

TRUNK="/home/tenma/server/trunk"
TAGFILE=${TRUNK}/.tags/cscope.files
find ${TRUNK}/comm -name "*.cpp" -o -name "*.c" -o -name "*.h" > ${TAGFILE}
find ${TRUNK}/item -name "*.cpp" -o -name "*.c" -o -name "*.h" >> ${TAGFILE}
find ${TRUNK}/wmall -name "*.cpp" -o -name "*.c" -o -name "*.h" >> ${TAGFILE}
cd ${TRUNK}/.tags
cscope -Rbkq -i ${TAGFILE}
