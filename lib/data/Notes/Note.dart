class Note {
  int id;
  String ide;
  String title;
  String description;
  Note(this.ide,this.title, this.description);

  setTitle(String title){
    this.title = title;
  }
  setDescription(String description){
    this.description = description;
  }

  String getTitle(){
    return title;
  }
  String getDescription(){
    return description;
  }
}