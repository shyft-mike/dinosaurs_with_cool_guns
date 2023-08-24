extends RefCounted
class_name CharacterFactory

enum CharacterType {RAPTOR,ANKY,T_REX}


func generate_character(type: CharacterType) -> Character:
	var character = Raptor.new()
	
	match type:
		CharacterType.RAPTOR:
			character = Raptor.new()
	
	return character


