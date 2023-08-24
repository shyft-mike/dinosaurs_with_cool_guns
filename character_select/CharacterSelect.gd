extends Panel

var character_factory: CharacterFactory


func _init():
	self.character_factory = CharacterFactory.new()
	

func _ready():
	var characters = get_characters()
	
	for character in characters:
		var button = preload("res://character_select/character_select_button.tscn").instantiate()
		button.init(character)
		button.character_selected.connect(_on_character_selected)
		$GridContainer.add_child(button)
		
	
func get_characters():
	var results = get_selectable_characters()
	
	return results
	
	
func get_selectable_characters():
	var results = []
	
	#TODO: get all characters, grey out unselectable
	
	for character_type in CharacterFactory.CharacterType.values():
		results.append(character_factory.generate_character(character_type))
		
	return results


func _on_character_selected(character):
	print_debug("Character selected")
