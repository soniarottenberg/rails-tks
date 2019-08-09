module ApplicationHelper

  def damage(fighter1, fighter2)
    damage = fighter1.attack - fighter2.defense
    fighter2.health = fighter2.health - damage
    fighter2.write_attribute(:health, "#{fighter2.health}")
    return alive(fighter1, fighter2)
    # "#{fighter1.name} attacks. #{fighter2.name} health is now #{fighter2.health}."
  end

  def alive(fighter1, fighter2)
    if fighter1.health <= 0
      "#{fighter1.name} has lost!"
    elsif fighter2.health <= 0
      "#{fighter2.name} has lost!"
    else
      damage(fighter1, fighter2)
    end
  end

  # def combat(fighter1, fighter2)
  #   until alive(fighter1, fighter2) == true
  #     damage(fighter1, fighter2)
  #   end
  # end
end
