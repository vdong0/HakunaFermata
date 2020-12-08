
use_bpm 80
tempo1 = 100
tempo2 = 100
tempo3 = 100

live_loop :snap do
  sleep(16)
  24.times do
    sample :perc_snap
    sleep(1)
    sample :perc_snap2
    sleep(1)
  end
  
  sleep(38.4)
  
  16.times do
    use_bpm tempo2
    sample :perc_till
    
    with_fx :reverb, mix: 0.3 do
      8.times do
        sample :drum_cymbal_closed, rate: 2, vol: rrand(0.3, 0.7)
        sleep 0.5
      end
    end
    
    sleep(4)
    tempo2 -= 1
  end
  
  sleep(32)
  
  in_thread do
    16.times do
      use_bpm tempo3
      sample :perc_snap
      sleep(1)
      sample :perc_snap2
      sleep(1)
    end
  end
  
  16.times do
    use_bpm tempo3
    sample :perc_till
    
    with_fx :reverb, mix: 0.3 do
      6.times do
        sample :drum_cymbal_closed, rate: 2, vol: rrand(0.3, 0.7)
        sleep 0.5
      end
      sample :perc_swoosh
    end
    sleep(1)
  end
  
  sleep(10)
  
end


live_loop :main do
  8.times do
    with_fx :reverb, mix: 0.5 do
      
      use_synth :piano
      play chord(:G4, :minor7), release: 1, amp: 3
      
      use_synth :pluck
      play_pattern_timed chord(:G6, :minor7), 0.25, pan: rrand(-1, 1), release: 0.05
      play_pattern_timed chord(:G4, :minor7), 0.25, pan: rrand(-1, 1), release: 0.1
      play_pattern_timed chord(:G5, :minor7), 0.25, pan: rrand(-1, 1), release: 0.2
      play_pattern_timed chord(:G3, :minor7), 0.25, pan: rrand(-1, 1), release: 0.3
      
      use_synth :piano
      play chord(:Gs3, :minor7), release: 1, amp: 3
      
      use_synth :sine
      play_pattern_timed chord(:C1, :major7), 0.25, pan: rrand(-1, 1), release: 0.05
      play_pattern_timed chord(:C2, :major7), 0.25, pan: rrand(-1, 1), release: 0.1
      play_pattern_timed chord(:C3, :major7), 0.25, pan: rrand(-1, 1), release: 0.2
      play_pattern_timed chord(:C4, :major7), 0.25, pan: rrand(-1, 1), release: 0.3
      
    end
  end
  
  16.times do
    sample :ambi_swoosh
    8.times do
      sample :vinyl_hiss
      sleep 0.3
    end
  end
  
  16.times do
    with_fx :reverb, mix: 0.4 do
      use_bpm tempo1
      use_synth :piano
      play chord(:G4, :minor7), release: 1, amp: 3
      
      use_synth :pluck
      play_pattern_timed chord(:G6, :minor7), 0.25, pan: rrand(-1, 1), release: 0.05
      play_pattern_timed chord(:G4, :minor7), 0.25, pan: rrand(-1, 1), release: 0.1
      play_pattern_timed chord(:G5, :minor7), 0.25, pan: rrand(-1, 1), release: 0.2
      play_pattern_timed chord(:G3, :minor7), 0.25, pan: rrand(-1, 1), release: 0.3
      
      use_synth :piano
      play chord(:Gs3, :minor7), release: 1, amp: 3
      
      use_synth :sine
      play_pattern_timed chord(:C1, :major7), 0.25, pan: rrand(-1, 1), release: 0.05
      play_pattern_timed chord(:C2, :major7), 0.25, pan: rrand(-1, 1), release: 0.1
      play_pattern_timed chord(:C3, :major7), 0.25, pan: rrand(-1, 1), release: 0.2
      play_pattern_timed chord(:C4, :major7), 0.25, pan: rrand(-1, 1), release: 0.3
      tempo1 -= 1
    end
  end
  
  4.times do
    sample :perc_door, vol: rrand(0.1, 0.3)
    sample :ambi_sauna, vol: rrand(0.3, 0.7)
    sleep(8)
  end
  
  8.times do
    with_fx :reverb, mix: 0.6 do
      use_bpm tempo3
      use_synth :piano
      play chord(:G4, :minor7), release: 1, amp: 3
      
      use_synth :pluck
      play_pattern_timed chord(:G6, :minor7), 0.25, pan: rrand(-1, 1), release: 0.05
      play_pattern_timed chord(:G4, :minor7), 0.25, pan: rrand(-1, 1), release: 0.1
      play_pattern_timed chord(:G5, :minor7), 0.25, pan: rrand(-1, 1), release: 0.2
      play_pattern_timed chord(:G3, :minor7), 0.25, pan: rrand(-1, 1), release: 0.3
      
      use_synth :piano
      play chord(:Gs3, :minor7), release: 1, amp: 3
      
      use_synth :sine
      play_pattern_timed chord(:C1, :major7), 0.25, pan: rrand(-1, 1), release: 0.05
      play_pattern_timed chord(:C2, :major7), 0.25, pan: rrand(-1, 1), release: 0.1
      play_pattern_timed chord(:C3, :major7), 0.25, pan: rrand(-1, 1), release: 0.2
      play_pattern_timed chord(:C4, :major7), 0.25, pan: rrand(-1, 1), release: 0.3
      
    end
  end
  
  sleep(10)
  
end
