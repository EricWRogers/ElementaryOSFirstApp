int main (string[] args) {
    Gtk.init (ref args);
    
    
    var window = new Gtk.Window ();
    window.title = "Hello World!";
    window.set_border_width (12);
    window.set_position (Gtk.WindowPosition.CENTER);
    window.set_default_size (350, 70);
    window.destroy.connect (Gtk.main_quit);
    
    var grid = new Gtk.Grid ();
    grid.orientation = Gtk.Orientation.VERTICAL;
    grid.row_spacing = 6;
    //adding button
    var button = new Gtk.Button.with_label ("Click me!");
    var label = new Gtk.Label (null);
    //button functionality
    button.clicked.connect (() => {
        label.label = _("Hello World!");
        button.sensitive = false;
    });
    //adding stuff to the grid
    grid.add (button);
    grid.add (label);
    
    //add to window
    window.add (grid);
    window.show_all ();

    Gtk.main ();
    return 0;
}

//valac --pkg gtk+-3.0 *.vala
