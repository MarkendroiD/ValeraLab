require_relative 'game_process'
require_relative 'viewer'
require_relative 'reader'

class Main
  def initialize
    @game = GameProcess.new
    @viewer = Viewer.new
    @valera = Valera.new
    @reader = Reader.new
  end

  def start
    loop do
      @viewer.print_stats(@valera)
      @viewer.print_actions
      @reader.read_action(@game)
      @valera = @game.do_action
      next unless @valera == false

      puts('Валера умер! Конец игры')
      puts('q - выход, Enter - начало новой игры')
      input = gets.chomp
      if input == ''
        load 'lib/main.rb'
      else
        exit
      end
    end
  end
end

main = Main.new
main.start
