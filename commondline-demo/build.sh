clang -c static1.c -o static1.o
clang -c static2.c -o static2.o
ar rcs libstatic1.a static1.o
ar rcs libstatic2.a static2.o

clang -dynamiclib -o libshared1.dylib shared1.c
clang -dynamiclib -o libshared2.dylib shared2.c

#  -Xlinker -all_load
# -Xlinker -dead_strip
# clang -o main main.c -L. -lshared1 -lstatic1
# clang -o main main.c -L. -lstatic2 -lstatic1 -Xlinker -dead_strip
clang -o main main.c -L. -lshared1 -lstatic1
./main 