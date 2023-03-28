# Get closer to any random boid that is further than 2 blocks away
execute as @e[tag=boid] at @s facing entity @e[tag=boid,limit=1,distance=2..,sort=random] feet run tp @s ^0 ^0 ^0.2
# Get further from any random boid that is closer than 2 blocks away
# Move slightly faster than the getting closer function,
# so that boids will outpace the randomness and stay far enough apart
execute as @e[tag=boid] at @s facing entity @e[tag=boid,limit=1,distance=0.0000001..2,sort=nearest] feet run tp @s ^-0 ^0 ^-0.3

# Issues:
# - Boids don't exclude self if they are in exactly the same position
# - Boids don't move in a direction (need to pick a leader)
# - Make a direction vector (using an entity to look at?)
