const rl = @import("raylib");

const ste = @import("state.zig");
const menu = @import("mainMenu.zig");
const abt = @import("about.zig");
const over = @import("gameOver.zig");
const game = @import("game.zig");

pub fn main() anyerror!void {
    const w = rl.GetMonitorWidth(0);
    const h = rl.GetMonitorHeight(0);

    rl.InitWindow(w, h, "Crate Box");
    rl.SetTargetFPS(60);

    // TODO Init State Struct
    // TODO Improve init
    var state: ste.State = undefined;
    state.maxY = h; state.maxX = w;
    ste.stateInit(&state);

    while (!rl.WindowShouldClose()) {
        if (state.Screen == ste.Screen.MainMenu) {
            menu.mainMenu(&state);
        }
        if (state.Screen == ste.Screen.Game) {
            game.game(&state);
        }
        if (state.Screen == ste.Screen.About) {
            abt.about(&state);
        }
        if (state.Screen == ste.Screen.GameOver) {
            try over.gameOver(&state);
        }
    }
    rl.CloseWindow();
}
