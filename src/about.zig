const rl = @import("raylib");
const ste = @import("state.zig");

pub fn about(state: *ste.State) void {
    rl.BeginDrawing();
    rl.ClearBackground(rl.WHITE);
    rl.DrawText("About", 20, 20, 100, rl.LIGHTGRAY);
    rl.DrawText("made with Zig and RayLib", 20, 160, 20, rl.DARKGRAY);
    rl.DrawText("more info at github.com/sz47/crate_box", 20, 200, 20, rl.DARKGRAY);
    rl.DrawText("press space to go to main menu", 20, 410, 20, rl.LIGHTGRAY);
    rl.EndDrawing();

    if (rl.IsKeyPressed(rl.KeyboardKey.KEY_SPACE) or rl.IsKeyPressed(rl.KeyboardKey.KEY_A)) {
        state.Screen = ste.screen.MainMenu;
    }
}
