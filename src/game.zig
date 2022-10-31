const rl = @import("raylib");
const ste = @import("state.zig");

pub fn game(state: *ste.State) void {
    rl.BeginDrawing();
    rl.ClearBackground(rl.WHITE);
    rl.DrawText("Game", 20, 20, 100, rl.LIGHTGRAY);
    rl.EndDrawing();

    if (rl.IsKeyPressed(rl.KeyboardKey.KEY_SPACE)) {
        state.Screen = ste.Screen.GameOver;
    }
}
