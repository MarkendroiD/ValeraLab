require_relative 'valera'

class Viewer
  def print_actions(actions_config)
    actions_config.each { |key| print key['before_text'] }

    print('8. Save game')
    print('9. Load game')
    print('10. Exit')
  end

  def print_stats(stats)
    print("\nПараметры Валеры:")
    print("Здоровье: #{stats['health']}")
    print("Алкоголь: #{stats['mana']}")
    print("Веселье: #{stats['fun']}")
    print("Усталость: #{stats['tire']}")
    print("Деньги: #{stats['money']}\n\n")
  end
end
