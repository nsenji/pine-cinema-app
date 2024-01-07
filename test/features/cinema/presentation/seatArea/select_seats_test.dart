import 'package:flutter_test/flutter_test.dart';

void main() {
  test('getRowLetter returns correct row letter for seat number', () {
    String getRowLetter(int seatNumber) {
      int columns = 15;

      // Calculate the row number
      int rowNumber = seatNumber ~/ columns;
      if (seatNumber % columns != 0) {
        rowNumber++;
      }

      // Convert row number to corresponding letter
      String rowLetter = String.fromCharCode('A'.codeUnitAt(0) + rowNumber - 1);

      return rowLetter;
    }

    // Arrange
    int seatNumber = 9;
    String expectedRowLetter = 'A'; // The expected row letter for seat 54

    // Act
    String actualRowLetter = getRowLetter(seatNumber);

    // Assert
    expect(actualRowLetter, expectedRowLetter);
  });
}
