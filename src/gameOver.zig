const rl = @import("raylib");
const std = @import("std");
const ste = @import("state.zig");

pub fn gameOver(state: *ste.State) !void {
    rl.BeginDrawing();
    rl.ClearBackground(rl.WHITE);
    rl.DrawText("GameOver", 20, 20, 100, rl.LIGHTGRAY);

    // TODO improve these 3 lines
    var buf: [11]u8 = undefined;
    const slice = try std.fmt.bufPrint(&buf, "MaxScore {}", .{state.Game.maxScore});
    rl.DrawText(@ptrCast(*const u8, slice), 20, 140, 60, rl.RED);

    rl.DrawText("press space to go to main menu", 20, 410, 20, rl.LIGHTGRAY);
    rl.EndDrawing();

    if (rl.IsKeyPressed(rl.KeyboardKey.KEY_SPACE)) {
        state.Screen = ste.Screen.MainMenu;
    }
}
