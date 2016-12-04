# Designing and Debugging
# Write a game similar the ex35.rb
# Plans: define logic
# Refactor with case statements rather than if/elsif/else statements

# Start of the game
def game_start
  choices = ["flee", "fight", "paralyzed", "faint", "hide"]

  puts "Stands before you is the evil that is Cthulu."
  puts "What do you do?"
  puts "You: #{choices[0]}."
  puts "You: #{choices[1]}."
  puts "You: #{choices[2]}."
  puts "You: #{choices[3]}."
  puts "You: #{choices[4]}."

  print "> "
  choice = $stdin.gets.chomp

  # Use switch statement when refactoring
  if choice == "flee"
    start_choice.flee_choice
  elsif choice == "fight"
    start_choice.fight_choice
  elsif choice == "paralyzed"
    start_choice.paralyzed_choice
  elsif choice == "faint"
    start_choice.faint_choice
  elsif choice == "hide"
    start_choice.hide_choice
  else
    dead("Hey buddy, you're dead!  You succumbed to Cthulhu.")
  end
end

def start_choice
  def fight_choice
    weapons = ['stick', 'axe', 'gun', 'portal gun']

    puts "You chose to fight, which weapon do you choose?"

    weapons.each do |item|
      puts "The #{item}"
    end

    # puts "You see around you four weapons: #{weapons}, which do you choose?"
    print "> "
    choice = $stdin.gets.chomp

    # Refactor to case statement
    if choice.include?('stick')
      weapon_choice.stick
    elsif choice.include?('axe')
      weapon_choice.axe
    elsif choice.include?('gun')
      weapon_choice.gun
    elsif choice.include?('portal')
      weapon_choice.portal_gun
      # Bug - When choose portal gun, gun choice will trigger
    else
      outcome.dead("That wasn't an option!")
    end
  end

  def flee_choice
    outcome.win("You flee!");
    puts "You're back where you started."
    game_start
  end

  def paralyzed_choice
    outcome.dead("You become paralyzed with fear, hoping Cthulhu's eyesight is based on movement.  It's not, you're dead.")
  end

  def faint_choice
    outcome.win("You faint, causing Cthulhu to become disinterested in your soul.")
  end

  def hide_choice
    outcome.dead("You attempt to hide, but Cthulhu can smell your pungent fear.")
  end
end

def outcome
  # Dead!
  def dead(why)
    puts why, "Try again next time!"
    exit(0)
  end
  # Alive!
  def win(why)
    puts why, "You survived!"
  end
end

def weapon_choice
  def portal_gun
    choice = ["1. You run forward, shooting the portal gun behind you.",
              "2. You run towards Cthulhu, shooting the portal gun into it's body",
              "3. You duck behind a boulder and shoot the gun at Cthulhu's feet.",
              "4. You shoot the portal gun to open a portal at your feet, hoping to live."]

    puts "What do you do?"
    choice.each {|action| puts "#{action}"}

    print "> "
    $stdin.gets.chomp.to_i

    # Refactor to case statement
    if choice == 1
      outcome.dead("You shoot wildly at Cthulhu, but miss terribly.  Cthulhu devours your soul.")
    elsif choice == 2
      outcome.dead("You shoot at Cthulhu's body, creating a gaping hole in its chest. It rushes towards you, angrily.")
    elsif choice == 3
      outcome.win("You shoot at Cthulhu's feet, causing it to fall into the portal, momentarily allowing you to escape.")
    else choice == 4
      outcome.dead("You open a portal at your feet, and fall through to your death.")
    end
  end

  def stick
    outcome.dead("Well, that was a bad choice.")
  end

  def gun
    outcome.dead("Cthulhu's hide cannot be pierced by mortal weapons.")
  end

  def axe
    outcome.dead("While a bold choice, Cthulhu's hide cannot be pierced by mortal weapons.")
  end
end

game_start
