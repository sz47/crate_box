const rl = @import("raylib");

const ste = @import("state.zig");
const menu = @import("mainMenu.zig");
const abt = @import("about.zig");
const over = @import("gameOver.zig");
const game = @import("game.zig");

pub fn main() anyerror!void {
    const screenWidth = 800;
    const screenHeight = 450;

    rl.InitWindow(screenWidth, screenHeight, "Crate Box");
    rl.SetTargetFPS(60);

    // TODO Init State Struct
    // TODO Improve init
    var state: ste.State = undefined;
    ste.stateInit(&state);

    while (!rl.WindowShouldClose()) {
        if (state.Screen == ste.screen.MainMenu) {
            menu.mainMenu(&state);
        }
        if (state.Screen == ste.screen.Game) {
            game.game(&state);
        }
        if (state.Screen == ste.screen.About) {
            abt.about(&state);
        }
        if (state.Screen == ste.screen.GameOver) {
            try over.gameOver(&state);
        }
    }
    rl.CloseWindow();
}
