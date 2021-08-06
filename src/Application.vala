public class MyApp: Gtk.Application {
    public MyApp() {
        Object(
            application_id:"com.github.yansudo.gtk-hello",
            flags:ApplicationFlags.FLAGS_NONE
        );
    }
     
    public override void activate(){
        var main_window = new Gtk.ApplicationWindow(this){
            default_height = 300,
            default_width = 300,
            title = "Hello World"
        };
        
        var button_hello = new Gtk.Button.with_label("Click me!"){
            margin = 12
        };
        
        button_hello.clicked.connect(
            () => {
                button_hello.label = "Hello World!";
                button_hello.sensitive = false;
            }
        );
        
        var label = new Gtk.Label("Hello again world!");
        
        main_window.add(label);
        main_window.add(button_hello);
        main_window.show_all();
    }
    
    public static int main(string[] args){
        return new MyApp().run(args);
    }
}



