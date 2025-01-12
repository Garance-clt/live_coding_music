use_bpm 50

use_random_seed 99

# Dark Ambient Background
live_loop :ambient do
  with_fx :reverb, mix: 0.9, room: 1 do
    with_fx :echo, mix: 0.5, phase: 0.5 do
      use_synth :dark_ambience
      play choose([:C2, :G2, :D3, :A3]), attack: 4, release: 8, amp: 0.8
      sleep 8
    end
  end
end

#Melody
live_loop :melody do
  sync :ambient
  use_synth :hollow
  with_fx :flanger, depth: 2, feedback: 0.4 do
    play_pattern_timed scale(:D3, :minor, num_octaves: 2), [0.5, 0.75, 0.5, 1.5], release: 1.5, amp: 1
    sleep [1, 2].choose
  end
end


live_loop :chords do
  sync :ambient
  use_synth :prophet
  with_fx :reverb, mix: 0.8, room: 1 do
    play_chord chord(:G2, :minor), attack: 2, release: 6, amp: 0.9
    sleep 8
  end
end

#bass
live_loop :bass do
  sync :ambient
  use_synth :fm
  with_fx :distortion, mix: 0.3 do
    play choose([:C1, :G1, :D2]), release: 6, amp: 1.5
    sleep 6
  end
end

#choir
live_loop :choir do
  sync :ambient
  use_synth :dark_ambience
  with_fx :echo, phase: 1 do
    play choose([:A3, :E3, :G3]), attack: 3, release: 7, amp: 0.7
    sleep [4, 8].choose
  end
end

#Percu
live_loop :percussion do
  sync :ambient
  sample :drum_tom_lo_soft, amp: 0.6, rate: rrand(0.5, 1.2)
  sleep 2
  sample :drum_cymbal_soft, amp: 0.4, rate: rrand(0.8, 1.2)
  sleep 6
end
