2.times do
  with_fx :echo, mix: 0.5, phase: 1 do
    sample :guit_em9, rate: 0.5
    sample :guit_em9, rate: -1
  end
  sleep 8
end

1.times do
  with_fx :reverb, room: 1 do
    sample :bd_boom, amp: 10, rate: 1
  end
  sleep 4
end

2.times do
  with_fx :reverb, room: 1 do
    sample :bd_boom, amp: 10, rate: 1
  end
  with_fx :echo, mix: 0.5, phase: 1 do
    sample :guit_em9, rate: 0.5
    sample :guit_em9, rate: -1
  end
  sleep 4
  with_fx :reverb, room: 1 do
    sample :bd_boom, amp: 10, rate: 1
  end
  sleep 4
end
