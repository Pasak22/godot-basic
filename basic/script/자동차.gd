extends CharacterBody2D

const SPEED = 400

func _physics_process(delta):
	# 키보드 누를 때
	if Input.is_action_pressed("위로"):
		velocity.y = -SPEED
	if Input.is_action_pressed("아래로"):
		velocity.y = SPEED
	if Input.is_action_pressed("왼쪽으로"):
		velocity.x = -SPEED
	if Input.is_action_pressed("오른쪽으로"):
		velocity.x = SPEED

	# 키보드에서 손 뗄 때
	if Input.is_action_just_released("위로") or Input.is_action_just_released("아래로"):
		velocity.y = 0
	if Input.is_action_just_released("왼쪽으로") or Input.is_action_just_released("오른쪽으로"):
		velocity.x = 0

	# 도로 밖 이동 제한 (x: 194~323 y: 17~496)
	if position.x < 194:
		position.x = 194
	if position.x > 323:
		position.x = 323
	if position.y < 17:
		position.y = 17
	if position.y > 496:
		position.y = 496

	move_and_slide()

# extends CharacterBody2D

# const SPEED = 400

# func _physics_process(delta):
#     # 현재 입력 상태를 매 프레임마다 확인
#     var velocity_changed = false
	
#     # 위/아래 입력 처리
#     if Input.is_action_pressed("위로"):
#         velocity.y = -SPEED
#         velocity_changed = true
#     elif Input.is_action_pressed("아래로"):
#         velocity.y = SPEED
#         velocity_changed = true
#     else:
#         velocity.y = 0
	
#     # 좌/우 입력 처리
#     if Input.is_action_pressed("왼쪽으로"):
#         velocity.x = -SPEED
#         velocity_changed = true
#     elif Input.is_action_pressed("오른쪽으로"):
#         velocity.x = SPEED
#         velocity_changed = true
#     else:
#         velocity.x = 0

#     # 도로 밖 이동 제한 (x: 194~323 y: 17~496)
#     if position.x < 194:
#         position.x = 194
#     if position.x > 323:
#         position.x = 323
#     if position.y < 17:
#         position.y = 17
#     if position.y > 496:
#         position.y = 496

#     move_and_slide()
