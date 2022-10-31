const rl = @import("raylib");
const ste = @import("state.zig");

pub fn mainMenu(state: *ste.State) void {
    rl.BeginDrawing();
    rl.ClearBackground(rl.WHITE);
    rl.DrawText("Crate Box", 20, 20, 100, rl.LIGHTGRAY);
    rl.DrawText("Press Space to Start", 20, 370, 20, rl.DARKGRAY);
    rl.DrawText("press a to see about", 20, 410, 20, rl.LIGHTGRAY);
    rl.EndDrawing();

    if (rl.IsKeyPressed(rl.KeyboardKey.KEY_SPACE)) {
        state.Screen = ste.Screen.Game;
    }
    if (rl.IsKeyPressed(rl.KeyboardKey.KEY_A)) {
        state.Screen = ste.Screen.About;
    }
}
