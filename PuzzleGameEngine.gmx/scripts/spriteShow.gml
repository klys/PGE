/// spriteShow(tittle, txt, sprite, external_sprite)

var external = argument3;
var ___obj = instance_create(0,0,objSpriteGUI);

___obj.caption = argument0;
___obj.txt = argument1;
if (external == true) {
    ___obj.sprite = sprite_add(argument2,1,0,0,0,0);
    ___obj.external = true;
} else {
    ___obj.sprite = argument2;
}

