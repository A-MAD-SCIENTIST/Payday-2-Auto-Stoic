local tmp = tmp or PlayerDamage.delay_damage
function PlayerDamage:delay_damage(damage, seconds)
  tmp(self, damage, seconds)
  if self:remaining_delayed_damage() > 10 then
    managers.player:attempt_ability("damage_control")
  end
end