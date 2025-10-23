
var inst = ds_list_find_value(waves_list,wave_count);

if wave_timer <= 0 {
	if (spawned_count < inst.enemy_count_max and spawn_timer <= 0) {
		
		var enemy = inst.enemies;
		instance_create_depth(x,y,depth,enemy);
		spawned_count += 1
		spawn_timer = spawn_timer_max	
	}
	if spawned_count >= inst.enemy_count_max
	{
		spawned_count = 0
		wave_count += 1
		wave_timer = wave_timer_max	
	}
}
wave_timer  --;
spawn_timer --;
