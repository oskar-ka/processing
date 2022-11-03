#include <iostream>
#include <string>
#include <fstream>
#include <chrono>
#include <ios>
#include "misc.h"
#include "recursive.h"
#include "memoization.h"
#include "tabulation.h"
#include "binets_formula.h"

int main () {
    std::cout << "(b)enchmark or (p)layground?";
    std::string mode;
    std::cin >> mode;

    if (mode == "b") {
        std::cout << "Benchmark is running!\n";
        
        std::ofstream recu_file ("benchmark_recursion.csv");
        recu_file << "Recursion\n";
        recu_file.flush();

        std::cout << "Recursion\n";


        int n = 0;
        while (true) { //benchmark recursive function
            auto start = std::chrono::high_resolution_clock::now();
            recuFib_t(n);
            auto end = std::chrono::high_resolution_clock::now();
            auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start);

            recu_file << duration.count() << std::endl;
            recu_file.flush();

            std::cout << n << ": " << duration.count() << std::endl;

            if (duration.count() > 4000000 | n >= 250) {
                recu_file.close();
                break;
            }

            n++;
        }

        std::ofstream tabu_file ("benchmark_tabulation.csv");
        tabu_file << "Tabulation\n";
        tabu_file.flush();

        std::cout << "Tabulation\n";

        n = 0;
        while (true) { //benchmark recursive function
            auto start = std::chrono::high_resolution_clock::now();
            tabuFib_t(n);
            auto end = std::chrono::high_resolution_clock::now();
            auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start);

            tabu_file << duration.count() << std::endl;
            tabu_file.flush();

            std::cout << n << ": " << duration.count() << std::endl;

            if (duration.count() > 4000000 | n >= 250) {
                tabu_file.close();
                break;
            }

            n++;
        }

        std::ofstream memo_file ("benchmark_memoization.csv");
        memo_file << "Memoization\n";
        memo_file.flush();

        std::cout << "Memoization\n";


        n = 0;
        while (true) { //benchmark recursive function
            auto start = std::chrono::high_resolution_clock::now();
            memoFib_t(n);
            auto end = std::chrono::high_resolution_clock::now();
            auto duration = std::chrono::duration_cast<std::chrono::microseconds>(end - start);

            memo_file << duration.count() << std::endl;
            memo_file.flush();

            std::cout << n << ": " << duration.count() << std::endl;

            if (duration.count() > 4000000 | n >= 250) {
                memo_file.close();
                break;
            }

            n++;
        }

    } else if (mode == "p") {
        while (true){
            std::cout << "You want fibonacci number: ";
            std::string input;
            std::cin >> input;
            int n = std::stoi(input);
            
            //std::cout << "Memoization: ";
            //print_uint128(memoFib(n));
            std::cout << "Tabulation:  ";
            print_uint128(tabuFib(n));
            //std::cout << binetFib(n) << std::endl;
            std::cout << "\n";
        }
    }

    return 0;
}