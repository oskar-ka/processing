#include <iostream>
#include <chrono>
#include "recursive.h"
using namespace std;
using namespace chrono;

int main() {
  while (true) {
    cout << "You want fibonacci number: ";
    string input; // Få input fra brugeren
    cin >> input;
    int n = stoi(input);

    auto start = high_resolution_clock::now(); // start timer
    int result = recuFib(n);
    auto end = high_resolution_clock::now(); // slut timer
    auto duration = duration_cast<microseconds>(end - start); // udregn tid

    cout << "Result is " << result << " - Finished in " << duration.count()/1000 << "ms" << endl;
  }
  
  return 0;
}