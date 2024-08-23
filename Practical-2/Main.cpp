// 1. The string can start with any combination of 0s and 1s.
// 2. It must have at least one 0 followed by exactly two 1s.
// 3. Any number of 0s can appear before the final 11.

#include <iostream>
#include <string>

bool validateString(const std::string &input)
{
    int n = input.length();

    // A valid string must have at least two characters (ending with "11").
    if (n < 2)
        return false;

    // Check if the string ends with "11".
    if (input[n - 1] != '1' || input[n - 2] != '1')
        return false;

    // Traverse the string to check if it satisfies (0|1)*0*11.
    bool seenOneAfterZero = false;
    for (int i = 0; i < n - 2; i++)
    {
        if (input[i] == '1')
        {
            seenOneAfterZero = true;
        }
        else if (seenOneAfterZero && input[i] == '0')
        {
            // Invalid because a '0' appeared after a '1' has been seen
            return false;
        }
    }

    return true;
}

int main()
{
    std::string testCases[] = {
        "", "000", "111", "0", "001", "11011", "1", "010",
        "0101011", "00", "011", "0010111", "01", "100",
        "0000111", "10", "101", "010111001", "11", "110", "100001001"};

    for (const std::string &testCase : testCases)
    {
        std::cout << "Input: " << testCase
                  << " - Valid: " << (validateString(testCase) ? "Yes" : "No")
                  << std::endl;
    }

    return 0;
}