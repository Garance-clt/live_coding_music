# Test des synthétiseurs
use_synth :tb303
play 38, attack: 1
sleep 0.5
use_synth :rodeo
play 50, release:3
sleep 0.25
use_synth :mod_dsaw
play 57, attack:0.5, release: 1
play 52, attack:1.5, release:0.5
sleep 1
use_synth :tb303
play 38, attack: 1
use_synth :tech_saws
play 33, attack:0.5, release:1
use_synth :rodeo
play 55
play 57, amp:1
sleep 0.25
play 52
sleep 0.25
play 55

# Test des samples 
sample :loop_amen, start: 0.5, finish: 0.8, rate: -0.2, attack: 0.3, release: 1
play 48
sleep 0.5
play 36
sleep 0.5
play 36
sleep 1
play 48
sample :ambi_drone
sleep 1
play 36
play 44
