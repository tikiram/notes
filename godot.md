
Proyect | Proyect Settings | Display | Window

	Size
		Width 640
		Height 360
		Test Width 1280
		Test Height 720	
	Stretch
		Mode 2d
		Aspect expanded


Movement

```python
extends KinematicBody2D


const UP = Vector2(0, -1)
var motion = Vector2()

const GRAVITY = 10
const SPEED = 100
const JUMP_HEIGHT = 400

func _physics_process(delta):
	
	motion.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
	else:
		motion.x = 0
		
	if is_on_floor():
		if Input.is_action_pressed("ui_up"):
			motion.y = -JUMP_HEIGHT
		
	motion = move_and_slide(motion, UP)
	
	pass

```

Shooting bullets

```python
var bullet = preload("res://Bullet.tscn")


var speep = 100

func _ready():
	set_process(true)
	set_physics_process(true)

func _process(delta):
	if Input.is_action_just_pressed("fire"):
		var bulletInstance = bullet.instance()
		bulletInstance.position = Vector2(position.x, position.y - 20)
		get_tree().get_root().add_child(bulletInstance)

func _physics_process(delta):
	if Input.is_action_pressed("ui_left"):
		move_and_collide(Vector2(-speed * delta, 0))
	elif Input.is_action_pressed("ui_right"):
		move_and_collide(Vector2(speed * delta, 0
```

### Tile
 
+ Node2d
	+ Sprite
		+ StaticBody2D
			+ CollisionShape2d

Sprite:
	+ Region: Enabled -> false
	+ Offset: Centered -> false
	+ Tab TextureRegion:
		- Grid Snap

Convert to TileSet

### Using Tile Map


+ Node2d
	+ TiteMap
		- Tile Set: tile set resource
		- Cell: Size -> 32 x 32