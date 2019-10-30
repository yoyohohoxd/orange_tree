class OrangeTree 
    
  def initialize
    @height = 0
    @numberOfOranges = 0
    @pickedOranges = 0
    @smallEstimate = 50 + rand(51)

    puts 'Your orange tree has been planted. Let\'s see how many Godfathers are going to die with your fruit in their hands.'
    
  end

  def countOranges
    if @numberOfOranges <= 0
      puts 'There are no oranges on this tree yet.'
    else
      puts 'This year we have exactly ' + @numberOfOranges.to_s + ' on the tree!'
    end
  end

  def pickOranges
    if @numberOfOranges <= 0
      puts 'After closer inspection there are definitely no oranges on this tree.'
    else
    @numberOfOranges = @numberOfOranges - 10
    @pickedOranges = @pickedOranges + 10
    puts 'You have picked enough oranges to fill your small backpack. You\'ve gotten ' + @pickedOranges.to_s + ' oranges in total from this lovely tree.'
    puts 'After having picked oranges there are ' + @numberOfOranges.to_s + ' left on the tree!'
    end
  end
  
  def oneYearPasses
    @height = @height + 1
    puts 'A year passes and your tree is growing. It is now ' + @height.to_s + ' meters heigh.'

    if @height <= 3
      puts 'Your tree is still not mature enough to produce food. Next year maybe?'
    elsif @height == 4
      @numberOfOranges = @numberOfOranges + 50 + rand(51)
      puts 'Ah, finally the tree is starting to produce. There\'s what? Like ' + @smallEstimate.to_s + ' oranges on there?'
    elsif @height <= 6
      @numberOfOranges = 0
      @numberOfOranges = @numberOfOranges + 300 + rand(51)
      puts 'Your tree is thriving! At least 300 oranges!'
    else
      puts 'Your tree has died of old age. To be honest, it really didn\'t outlive a lot of gangsters..'
      if @pickedOranges > 0
        puts '... on the bright and sunny side, you got a total of ' + @pickedOranges.to_s + ' from this old tree!'
      else
        puts '... and you didn\'t even get any oranges out of it. You didn\'t really do a good job here, mate.'
      end
    exit
    end

  end

end

command = ''

puts 'To plant your orange tree input \'plant tree\' below and start your tree-growing adventure!'
command = gets.chomp.downcase
    if command == 'plant tree'
        lineWidth = 100
        tree = OrangeTree.new
        puts ''
        puts 'So this is how you play:'.center lineWidth
        puts ''
        puts ' -  input   \'pass year\'   to pass a year and watch your orange tree grow.'
        puts ' -  input   \'count oranges\'   to count the exact number of oranges on the tree in this year.'
        puts ' -  input   \'pick oranges\'   to pick oranges and put them inside of your bag.'
        puts ' -  input   \'--help\'   to recollect your possible actions.'
        puts ''
        while command != 'exit'
        command = gets.chomp.downcase
            if command == 'pass year'
                tree.oneYearPasses
            elsif command == 'count oranges'
                tree.countOranges
            elsif command == 'pick oranges'
                tree.pickOranges
            elsif command == '--help'
                puts ''
                puts 'input   \'pass year\'   to pass a year and watch your orange tree grow.'
                puts 'input   \'count oranges\'   to count the exact number of oranges on the tree in this year.'
                puts 'input   \'pick oranges\'   to pick oranges and put them inside of your bag.'
                puts ''
            else
                puts ''
                puts 'That\'s not an action. If you forgot what you can do, input   \'--help\' or try again.'
                puts ''
            end
        end
    else
        puts 'No oranges for you this time around.'
    end
