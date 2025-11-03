function deal_damage(_inst,_dmg){
    if _inst.iframes <= 0 {
        _inst.iframes = 45
        _inst.hp -= _dmg
    } 
}