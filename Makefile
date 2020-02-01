#C
#nbody: nbody.c
#	gcc -pg -fopenmp nbody.c -o nbody -lm

#nbody_cuda: nbody_cuda.cu
#		nvcc -pg nbody_cuda.cu -Xcompiler -fopenmp -o nbody_cuda -ta:turing -lm -O3


#acc
openacc: openacc.c
	pgcc -pg openacc.c -o openacc -ta:tesla -acc #-minfo=all



clean:
	rm -f nbody cuda openacc oprof *.txt *~ *.out
