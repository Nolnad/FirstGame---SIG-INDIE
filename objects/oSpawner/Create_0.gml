function wave(_enemies,_enemy_count_max) constructor {
	enemies     = _enemies;
	enemy_count_max =_enemy_count_max;
	enemy_count = enemy_count_max;
	
}

waves_list = ds_list_create();

ds_list_add(waves_list,new wave(oSlime,2))
ds_list_add(waves_list,new wave(oSlime,5))
ds_list_add(waves_list,new wave(oSlime,2))
ds_list_add(waves_list,new wave(oSlime,5))
ds_list_add(waves_list,new wave(oSlime,2))
ds_list_add(waves_list,new wave(oSlime,5))
ds_list_add(waves_list,new wave(oSlime,2))
ds_list_add(waves_list,new wave(oSlime,5))

wave_count = 0

wave_timer = 60*5
wave_timer_max = 60*12

spawn_timer =0 
spawn_timer_max = 14

spawned_wave = false 

spawned_count = 0
