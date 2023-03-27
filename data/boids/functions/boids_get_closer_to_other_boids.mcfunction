# Get closer to any random boid that is further than 2 blocks away
execute as @e[tag=boid] at @s facing entity @e[tag=boid,limit=1,distance=2..,sort=random] feet run tp @s ^0 ^0 ^0.2
# Get further from any random boid that is closer than 2 blocks away
# TODO: Exclude self
execute as @e[tag=boid] at @s facing entity @e[tag=boid,limit=1,distance=0.0000001..2,sort=random] feet run tp @s ^-0 ^0 ^-0.2
