function save_game(){
	var _file = file_text_open_write("save.txt")
	file_text_write_real(_file, global.hp)
}

function load_game() {

}