//histogram.cpp
#include <vector>
#include <map>
#include <iostream>
#include <random>
#include <chrono>
#include <fstream>
#include <string>
#include <sstream>
#include<omp.h>

int main(int argc, char* argv[])
{
	size_t size = 10000;
	size_t nthreads = 8;

	size_t array_1 [size] = {};
	size_t size_array2 = ceil(size/nthreads);
	size_t array_2 [nthreads][size_array2];
	
	//----------------Single thread single array------------------------------
	std::chrono::steady_clock::time_point begin = std::chrono::steady_clock::now();
    for(size_t i=0; i<size; i++){ 
        ++array_1[i];
 	}
	std::chrono::steady_clock::time_point end = std::chrono::steady_clock::now();
	std::cout << "Single thread single array: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << std::endl;
	
	
	//----------------Multiple threads single array ------------------------------
	begin = std::chrono::steady_clock::now();
    
#pragma omp parallel num_threads(nthreads)
	{
#pragma omp for
		for(size_t i=0; i<size; i++){ 
	        ++array_1[i];
	 	}
	}
	end = std::chrono::steady_clock::now();
	std::cout << "Multiple threads single array: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << std::endl;
	
	//----------------Multiple threads array of arrays------------------------------
	begin = std::chrono::steady_clock::now();
    
#pragma omp parallel num_threads(nthreads)
	{
	int j = omp_get_thread_num();	
		for(size_t i=0; i<size_array2; i++){ 
	        ++array_2[j][i];
	 	}
	}
	end = std::chrono::steady_clock::now();
	std::cout << "Multiple threads array of arrays: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << std::endl;
	
	//----------------Multiple threads own array------------------------------
	begin = std::chrono::steady_clock::now();
    
#pragma omp parallel num_threads(nthreads)
	{
	size_t array_3[size_array2] = {};
		for(size_t i=0; i<size_array2; i++){ 
	        ++array_3[i];
	 	}
	}
	end = std::chrono::steady_clock::now();
	std::cout << "Multiple threads own arrays: " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << std::endl;
	

	
	return 0;
}
