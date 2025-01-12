use_bpm 60
use_synth :prophet


live_loop :ambient do
  with_fx :reverb, mix: 0.8, room: 0.9 do
    with_fx :echo, mix: 0.6, phase: 0.25 do
      play choose([:C3, :E3, :G3, :B3]), attack: 2, release: 4
      sleep 4
    end
  end
end


live_loop :lead_melody do
  sync :ambient
  with_fx :wobble, phase: 0.3 do
    with_fx :echo, mix: 0.5, phase: 0.25 do
      use_synth :blade
      play_pattern_timed scale(:E4, :minor_pentatonic, num_octaves: 2), [0.25, 0.5, 0.75, 0.25], release: 0.6, amp: 1.2
    end
  end
end

#Percu?
live_loop :drips do
  sync :ambient
  sample :elec_blip2, rate: rrand(0.8, 1.2), amp: 0.8
  sleep [0.25, 0.5, 1].choose
end

#Bass
live_loop :bass do
  sync :ambient
  with_fx :distortion, mix: 0.3 do
    play choose([:C2, :E2, :G2]), release: 1, amp: 1.5
    sleep 2
  end
end

# High-Pitched Synth
live_loop :high_synth do
  sync :ambient
  with_fx :slicer, phase: 0.25 do
    with_fx :bitcrusher, mix: 0.5, bits: 8 do
      play scale(:G6, :dorian).choose, release: 0.3, amp: rrand(0.5, 1)
      sleep 0.5
    end
  end
end

# Rhythmic Chords
live_loop :chords do
  sync :ambient
  with_fx :echo, mix: 0.4, phase: 0.375 do
    with_fx :reverb, mix: 0.6 do
      play_chord chord(:E3, :minor7), attack: 1, release: 3, amp: 0.8
      sleep 4
    end
  end
end
