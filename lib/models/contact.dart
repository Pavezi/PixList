class Contact{
  final int id;
  final String name;
  final String pix;

  Contact( this.id, this.name, this.pix);

  @override
  String toString() {
    // TODO: implement toString
    return 'Contact{id: $id, name: $name, pix: $pix';
  }
}