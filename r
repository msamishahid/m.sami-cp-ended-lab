#include <iostream>
using namespace std;
int main() {
 int option;
 cout << "Select an option (1 for finding primes, 2 for checking a number): ";
 cin >> option;
 switch (option) {
 case 1:
 int start, end;
 cout << "Enter the range (start and end): ";
 cin >> start >> end;
 cout << "Prime numbers in the range " << start << " to " << end << " are:" << endl;
 for (int num = start; num <= end; num++) {
 if (num <= 1)
 continue;
 int isPrime = 1;
 for (int i = 2; i * i <= num; i++) {
 if (num % i == 0) {
 isPrime = 0;
 break;
 }
 }
 if (isPrime)
 cout << num << " ";
 }
 cout << endl;
 break;
 case 2:
 int num;
 cout << "Enter a number to check if it's prime: ";
 cin >> num;
 if (num <= 1) {
 cout << num << " is not prime." << endl;
 }
 else {
 int isPrime = 1;
 for (int i = 2; i * i <= num; i++) {
 if (num % i == 0) {
 isPrime = 0;
 break;
 }
 }
 cout << num << (isPrime ? " is prime." : " is not prime.") << endl;
 }
 break;
 default:
 cout << "Invalid option. Please choose 1 or 2." << endl;
 }
 return 0;
}
