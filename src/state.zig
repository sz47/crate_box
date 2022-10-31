// State
pub const Screen = enum { MainMenu, About, Game, GameOver };

pub const State = struct {
    Screen: Screen,
    Game: Game,
    maxX: i32,
    maxY: i32,
};

// Player

pub const FaceDir = enum { left, right };
pub const PlayerType = enum { man };
pub const EnemyType = enum { zombie };
pub const BulletType = enum { bullet };

pub const Dyn = struct {
    posX: i32,
    posY: i32,
    velX: i32,
    velY: i32,
};

pub const Game = struct {
    paused: bool,
    gravity: i32,
    maxScore: i32,
    player: Player,
    enemies: []Enemy,
    bullets: []Bullet,
};

pub const Player = struct {
    playerType: PlayerType,
    dyn: Dyn,
    faceDir: FaceDir,
};

pub const Enemy = struct {
    enemyType: EnemyType,
    dyn: Dyn,
    faceDir: FaceDir,
};

pub const Bullet = struct {
    bulletType: BulletType,
    dyn: Dyn,
    faceDir: FaceDir,
};

// Init
pub fn stateInit(state: *State) void {
    state.Screen = Screen.MainMenu;
    state.Game = Game{
        .player = Player{
            .dyn = Dyn{
                .posX = 0,
                .posY = 0,
                .velX = 0,
                .velY = 0,
            },
            .playerType = PlayerType.man,
            .faceDir = FaceDir.left,
        },
        .gravity = 0,
        .paused = false,
        .maxScore = 47,
        .enemies = undefined,
        .bullets = undefined,
    };
}
