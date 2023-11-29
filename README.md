# ISBN-13-check-digit-calculator
This is a simple calculator in ruby that receives a ISBN-13 barcode without a check digit and returns it complete

## Running the Program
### Online:
  1. Open an online Ruby compiler like [Online GDB](https://www.onlinegdb.com/).
  2. Select Ruby as the programming language.
  3. Copy and paste the code from `calculator.rb`.
  4. Test the program.
    
### Local (Requires Ruby Installation):
1. Clone this repository using the following command:
    ```bash
    git clone https://github.com/AleFreitas/ISBN-13-check-digit-calculator.git
    ```
2. Open a terminal in the project directory.
3. Run the following command:
    ```bash
    ruby calculator.rb
    ```
4. If you wish to execute automated tests, ensure RSpec is installed by running the command:
   ```bash
     gem install rspec
   ```
   The, execute the tests with:
   ```bash
     rspec calculator_spec.rb
   ```
   (Note: You need to have Ruby installed on your machine. You can find installation instructions [here](https://www.ruby-lang.org/en/documentation/installation/).)

## Functionality
  - Receives an arbitrary ISBN-13 code without check digit from the user
  - Take each digit, from left to right and multiply them alternatively by 1 and 3
  - Sum those numbers
  - Take mod 10 of the summed figure
  - Subtract 10 and if the end number is 10, make it 0

  ![](https://github.com/AleFreitas/ISBN-13-check-digit-calculator/blob/main/assets/functionalExample.gif)
