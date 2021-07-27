# Basic Movements and Commands to get started

class Basics
  def how_to_quit
    ":q!"
  end

  def how_to_save
    ":w"
  end

  def save_and_quit
    ":wq"
  end

  def get_help
    ":help"
    ":help + command"
    ":help + mode_command"

    # Examples
    ":help u"
    ":help v_p"
  end

  def undo
    "u -> undo last command"
    "U -> undo everything on this line"

    "ctrl+r -> redo"
  end

  def modes
    "VIM starts in normal mode"
    "i -> insert mode before current char"
    "a -> insert mode after current char"
    "escape -> back to normal mode"

    "backspace in insert mode -> delete last character"


  end
end

class MovingAround
  def movement_basics
    "h -> left"
    "j -> down"
    "k -> up"
    "l -> right"

    "^ -> start of line"
    "$ -> end of line"

    [1, 2, 3].to_map.with_index { |_, i| puts i }.sum
  end

  def go_to
    "gg -> go to top"
    "G -> go to bottom"
  end

  def moving_distances
    "count + direction"
    "2l -> move 2 chars right"
    "5j -> move 5 lines down"

    "12G -> go to line 12"
  end

  def moving_by_words
    # A word in VIM is similar to regex, it counts _ as part of a word
    "w -> move to the beginning of the next word"
    "e -> move to the end of the next word"
    "b -> w but backwards"
    "ge -> e backwards"

    puts 'This is a line of words'
    this_is_a_method_call
  end

  def find_a_char
    # just work on the current line
    "f -> find that char on this line forwards"
    "F -> find that char on this line backwards"
    "t -> find the char before the char on this line"
    "; -> repeat last input"
    ", -> repeat last input but backwards"
    # And these work with a count too

    [1, 2, 3].to_map.with_index { |_, i| puts i }
    go_to_de_method(not_further)
  end

  def search
    "/ -> search"
    "n -> forward"
    "N -> back"
    "* -> search the current work forwards"
    "# -> search the current work backwards"

    go_to
  end

  def scrolling
    "ctrl+d -> scroll down half a page"
    "ctrl+u -> scroll up half a page"
    # There is a way to synchronize scrolling between buffers!
  end

  def move_the_screen
    "zz -> center screen on cursor"
    "zt -> center top"
    "zb -> center button"
  end
end

class Commands
  def delete_a_char
    "x -> delete a char"
    pputs "Hello World"

    "2x -> delete next 2 chars"
    ppputs "Hello World"

    "X -> delete the char before"
    pputs "Hello World"

  end

  def delete_a_line
    "dd -> deletes the current line"
    puts "Please delete"

    "2dd -> delete this and the next line"
    puts "Please delete this line "\
         "and the the next"
  end

  def delete_a_word
    "daw -> deletes the current word + a space"
    puts "This is xxxx a line"

    "diw -> deletes the current but no space"
    puts "This is xxxx a line"

    "dw -> to the end of the word + space"
    puts "This is notxxxx a line"
  end

  def delete_a_distance
    "d$ -> delete until end of line"
    puts "This is useful" This not ...

    "df<char> -> delete upto and including next occurance of <char>"
    puts [1, 2, 3].to_map.with_index { |_, i| puts i }.sum

    "d2f<char> -> delete upto including the second next occurance of <char>"
    puts "This is a 'special' 'word' word"
  end

  def delete_everything
    "dG -> delete everything to the end of the file"
    "d40G -> delete everything up to and including line 40"
    "d5j -> delete this and the next 5 lines"
    "5dd -> delete this and the next 4 lines"
    "dgg -> delete everything to the beginning of the file"
    "ggdG -> delete everything in file"
  end

  def delete_inside_parantheses
    "di) -> delete everything inside parentheses"

    this_is_a_method('abc', 1, 3)
  end

  def commands_in_general
    "[count] + command + object/direction"
    "command + [count] + object/direction" # Same as above

    "d5j == 5dj"
  end
end

class Extras
  def insert_a_new_line
    "o -> insert a new line below"
    "O -> insert a new line above"
  end

  def copy_and_paste
    "yaw -> copy current word"
    "yy -> copy current line"
    "y$ -> copy to the end of the line"

    "p -> paste"

    "d -> is cut -> can be pasted"
  end

  def change
    # c is combination of d + i
    "caw -> delete the current word + insert mode"

    puts('change me')
  end

  def insert_modes
    "i -> insert before character"
    "a -> insert after character"
    "I -> insert at the beginning of the line"
    "A -> insert at the end of the line"

    'print this'
  end

  def repeat
    ". -> repeat the last command"

    # Type inside the "old text" -> ci"new text -> escape
    # Go inside the "more old text" and type -> .
    puts "old text"
    puts "more old text"
  end

  def replace
    "r<char> -> replace the current char with <char>"
    pits "Hello World"

    "[count]~ -> change capitalization of [count] next chars"
    const = "Constants are all caps in ruby!"
  end

  def remove_new_line_symbols
    "J -> adds the next line to the current line"
    puts "some text...
    some more text."
  end

  def fix_indentation
    "== -> fixes indentation on this line"
    "gg=G -> go to top and fixes indentation up to end of the document"

    [1, 2, 3].map do |n|
    puts n
        n * 2
    end
  end

  def move_back_and_forth
    "ctrl+o -> move to last position"
    "ctrl+i -> move to next position"
  end

  def moving_in_class
    "% -> jump to matching paranthesis etc"
    # With a plugin it even works for do end

    "]m -> move to beginning of next method"
    "]M -> move to next end of method"
    "[m or [M -> like above but backwards"

    "]] -> move to top of next class or section"
    "][ -> move to next end of class or section"
    "[[ or [] -> like above but backwards"
    # Of course these work with a count as well
  end

  def vim_commandline
    ": -> starts commandline bottom right"
    ":! -> run a shell command"
  end
end
