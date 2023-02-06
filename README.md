# Ruby Practice

 1. Open a file (e.g. `float_find_hypotenuse.rb`) in the editor window.
 1. Modify the file per the instructions on top.
 1. Run your Ruby file by typing `ruby ` and then the name of the file you want to run in the terminal. If we want to run `float_find_hypotenuse.rb`, we can write the command:

      ```bash
      ruby float_find_hypotenuse.rb
      ```
   
      Remember, if there are multiple files with similar names, start typing the name and then just press <kbd>Tab</kbd> on your keyboard to let the terminal complete the name. You rarely need to type full filenames out — use **tab completion**!

1. To re-run this command, you can use the <kbd>Up ↑</kbd> and <kbd>Down ↓</kbd> arrow keys to look at the history of commands you've run in a terminal.
1. When you think you have the required output, run `rails grade` and proceed when the test passes without errors.

If you are struggling, **try to experiment directly in the IRB environment** by typing `irb` into the terminal and pressing enter. This will start an interactive Ruby terminal, where you can enter individual lines of Ruby to see their output. If you start `irb` then the terminal will no longer be in the `bash` environment so things like `rails grade` won't work. You will need to open a second terminal with the plus (+) icon and switch between the `irb` and `bash` terminals as needed. Alternatively type `exit` at the IRB terminal prompt to return to the `bash` environment.  

## Float
### float_find_hypotenuse.rb
A right triangle's two shorter sides have length `2.8` and `4.5`. Write a program to calculate how long its longest side is and print it.

Remember: the Pythagorean Theorem says that

![pythagorean therum](pythagorous.png)


where `a` and `b` are the lengths of the shorter sides, and `c` is the length of the longest side.

Your program should output a number; for example,

```bash
5.3
```

Read more about the formula: https://www.mathsisfun.com/pythagoras.html
### float_rounding.rb
Write a program that calculates 10 divided by 3 and rounds the result to 3 decimal places. The program should print this result.

```bash
3.333
```

## Specs
<details>
  <summary>Click here to see names of each test</summary>

float_find_hypotenuse.rb should output '5.3'' 

float_round.rb should output '3.333' 

</details>
