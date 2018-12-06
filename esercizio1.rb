2.times do
  guit
end
1.times do
  boom
end
2.times do
  guit
  boom
end

define :guit do
  with_fx :echo, mix: 0.5, phase: 1 do
    sample :guit_em9, rate: 0.5
    sample :guit_em9, rate: -1
  end
  sleep 8
end

define :boom do
  with_fx :reverb, room: 1 do
    sample :bd_boom, amp: 10, rate: 1
  end
  sleep 4
end
