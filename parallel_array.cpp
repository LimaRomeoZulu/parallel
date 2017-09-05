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
	size_t size = 100000;
	int  nthreads;
	std::stringstream(argv[1])>>nthreads;

	size_t array_1 [size] = {};
	size_t size_array2 = ceil(size/nthreads);
	std::cout << size_array2 << std::endl;	
	size_t array_2 [nthreads][size_array2];

	std::ofstream measures;
	measures.open("../0_measures_" + std::string(argv[1]), std::ios_base::app);

	for(int i = 0; i< 100; i++){

	//----------------Single thread single array------------------------------
	std::chrono::steady_clock::time_point begin = std::chrono::steady_clock::now();
    for(size_t i=0; i<size; i++){ 
        ++array_1[i];
 	}
	std::chrono::steady_clock::time_point end = std::chrono::steady_clock::now();
	measures << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << ",";
	
	
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
	measures << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << ",";

	
	//----------------Multiple threads array of arrays------------------------------
	begin = std::chrono::steady_clock::now();
    
#pragma omp parallel num_threads(nthreads)
	{
	const int j = omp_get_thread_num();	
		for(size_t i=0; i<size_array2; i++){ 
	        ++array_2[j][i];
	 	}
	}
	end = std::chrono::steady_clock::now();
	measures << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << ",";
	
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
	measures << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << std::endl;
	}

	measures.close();	
	return 0;
}
