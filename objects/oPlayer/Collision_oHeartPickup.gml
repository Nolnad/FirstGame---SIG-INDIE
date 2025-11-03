hp += other.heal

repeat(6)
	instance_create_depth(x+irandom_range(-6,6),y+irandom_range(-2,2)+8,depth,oDust)

instance_destroy(other) 