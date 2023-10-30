@echo off

DOSKEY make=cmake --build ./ $*

DOSKEY ls=dir $*

DOSKEY sshoraclevm=ssh ubuntu@129.152.19.184