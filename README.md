#include <iostream>
using namespace std;
int main() {
 string bookTitle, userChoice;
 int borrowDate, daysToReturn, returnDate, fine = 0;
 cout << "Enter the book title you want to borrow: ";
 cin >> bookTitle;
 cout << bookTitle << " is available." << endl;
 cout << "Do you want to borrow it? (Enter 'Y' for yes or 'N' for no): ";
 cin >> userChoice;
 if (userChoice == "Y" || userChoice == "y") {
 cout << "Enter the borrow date: ";
 cin >> borrowDate;
 daysToReturn = borrowDate + 7;
 cout << "Return in 7 days like before " << daysToReturn << " otherwise $1 per day fine." << endl;
 cout << "Enter the return date: ";
 cin >> returnDate;
 if (returnDate > daysToReturn) {
 fine = (returnDate - daysToReturn) * 1;
 cout << "Fine: $" << fine << ". Please pay if you've exceeded the due date." << endl;
 }
 else {
 cout << "Book received on time. No fine is applicable. Thank you!" << endl;
 }
 }
 else if (userChoice == "N" || userChoice == "n") {
 cout << "Thank you for your response." << endl;
 }
 else {
 cout << "Invalid input. Please enter 'Y' or 'N'." << endl;
 }
 return 0;
}
