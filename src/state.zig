// State
pub const screen = enum { MainMenu, About, Game, GameOver };

pub const State = struct {
    Screen: screen,
    Game: Game,
};

// Player
pub const faceDir = enum { left, right };

pub const Game = struct {
    Player: Player,
    MaxScore: i32,
    Paused: bool,
};

pub const Player = struct {
    posX: i32,
    posY: i32,
    faceDir: faceDir,
};

// Init
pub fn stateInit(state: *State) void {
    state.Screen = screen.MainMenu;
    state.Game = Game{
        .Player = Player{
            .posX = 0,
            .posY = 0,
            .faceDir = faceDir.left,
        },
        .Paused = false,
        .MaxScore = 47,
    };
}
