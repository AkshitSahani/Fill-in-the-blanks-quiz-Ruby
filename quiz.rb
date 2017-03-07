def play_quiz

  medium_quiz = "A specific kind of loop is a __1__ loop, which repeats a statement or group of statements while a given condition is TRUE. A loop statment can be terminated by the __2__ command, which moves execution to the statement immediately following the __2__ command. __3__ are among the most widely seen types of elements in Python. They can be created by simply enclosing characters within quotes. The list.append() function does __4__ the list instead of creating a new one, unlike the + function which doesn't __4__, but creates a new list."
  hard_quiz = "The value of operands can be manipulated by constructs called __1__. Let's consider the expression 2 + 3 = 5. Here, + is called the operator while 2 and 3 are called __2__. Any function block contains the function name and parentheses but always begins with the keyword __3__. __4__ is an object-oriented, interactive and high-level programming language that was used for this project. It was created by Guido van Rossum."
  easy_quiz = "__1__ are sequences of anything, just as strings are sequences of characters. __2__ loops can be used to iterate through each element in a list, making it easier to do so than using a while loop. __3__ are simply assigned memory locations to store any kind of values. __4__ lists can have one or more lists inside them, while __4__ loops can also have one or more loops inside them."
  answers_easy = ['lists','for','variables','nested']
  answers_medium = ['while','break','string','mutate']
  answers_hard=['operators','operands','def','python']

  print "Welcome to Sahani's fill in the blanks quiz!"
  print "What difficulty would you like to play? Please type easy, medium or hard \n"
  diff_answer = gets.chomp.downcase
  if diff_answer == "easy"
    quiz_type = easy_quiz
    answer_set = answers_easy
  elsif
    diff_answer == "medium"
    quiz_type = medium_quiz
    answer_set = answers_medium
  elsif
    diff_answer == "hard"
    quiz_type = hard_quiz
    answer_set = answers_hard
  else
    print "\n Please type in a valid difficulty \n"
    diff_answer = gets.chomp.downcase
  end


  print "\n How many maximum tries would you like? \n"
  num_tries = gets.chomp.to_i
  blanks = ["__1__", "__2__", "__3__", "__4__"]

  tries = 0

  p quiz_type
  j = 0


    blanks.each do |blank|

    puts "\n What should be be in place of #{blank}? \n"
    x = true
      while x
        user_answer = gets.chomp.to_s
        if user_answer == answer_set[j]
          quiz_type = quiz_type.gsub(blank, user_answer)
          print "\n Correct! Good job \n"
          puts "\n" + quiz_type
          j += 1
          x = false
        else
          puts "\n Wrong answer, try again \n"
          num_tries -= 1
          puts "You have #{num_tries} tries left!"
          if num_tries == 0
            print "Sorry, you lost!\n"
            return
          end
        end
      end
    end
end

play_quiz
