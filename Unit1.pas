unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
    panel_start: TPanel;
    Name: TLabeledEdit;
    Start: TBitBtn;
    panel_game: TPanel;
    losepanel: TPanel;
    Label1: TLabel;
    lose: TLabel;
    ball: TShape;
    Bat: TShape;
    Timer1: TTimer;
    Score: TStaticText;
    ScoreNum: TLabel;
    SuccessNum: TLabel;
    FailedNum: TLabel;
    HighScore: TListBox;
    procedure StartClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure HighScoreClick(Sender: TObject);
    function pad(a:integer):string;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  dirx, diry :integer; //direction of the ball -1 or 1
  speedx, speedy :integer; //speed of the ball in either direction
  CurrentScore , ScoreLost , ScoreWon :integer; //Score Keeping

implementation

{$R *.dfm}

procedure TForm1.StartClick(Sender: TObject);
//game begin after name typed
begin
     bat.Top := 100; //(panel_game.Height/2) - bat.Height;
     bat.Left :=1;
     panel_start.Visible := false;
     panel_game.visible :=true;
     dirx := -1;
     diry := -1;
     //Set speed to 10
     speedx := 10;
     speedy:= 10;
    // lose.Visible := false;
     losepanel.Visible := false;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
    //---------------wall bounce command-------------------
    // makes ball bounce off the right wall
    if ball.Left > panel_game.Width - ball.Width then
      begin
        dirx := dirx * -1;
        ball.Brush.Color :=clYellow
      end;
    //makes ball bounce off the top wall
    if ball.Top < 0 then diry := diry * -1;

    // bottom wall
    if ball.top > panel_game.Height - ball.Width then   diry := diry * -1;

    ScoreNum.Caption := inttostr(CurrentScore);
    SuccessNum.Caption := inttostr(ScoreWon);
    FailedNum.Caption := inttostr(ScoreLost);
    CurrentScore := ScoreWon-2*ScoreLost;

    //left wall bounce //

    if ball.Left < 0 then
      begin
        dirx := dirx * -1;
        ball.Brush.Color :=   clRed;
        ScoreLost := ScoreLost +1;
      end;
    if CurrentScore < (-10) then
      begin
        lose.Visible := true;
        LosePanel.Visible :=true;
        speedx := 0;
        speedy := 0;
      end;
    //-----------------end wall bounce --------------------
//------------Bat Hit----------------------
    if ball.Left <bat.Left+ bat.Width then
      if ball.Top + ball.Width > bat.Top then
        if ball.Top < bat.Top+bat.Height then
          begin
            dirx := dirx * -1;
            ball.Left := bat.Left + bat.Width + 1;
            ScoreWon := ScoreWon +1;
          end;

//------------End Bat Hit-------------------


    ball.Left := ball.Left - speedx*dirx;
    ball.Top := ball.Top - speedy*diry;
end;



procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if key = VK_DOWN then
      if bat.Top<panel_game.Height-bat.Height then bat.Top := bat.Top + 80
      else bat.Top := panel_game.Height-bat.Height;
   if key = VK_UP then
      if bat.Top>0  then bat.Top := bat.Top - 80
      else bat.Top := 0
end;

procedure TForm1.HighScoreClick(Sender: TObject);
begin
     //HighScore.
end;

function TForm1.pad(a:integer):string;
var
b:string;
c:integer;
d:string;

begin
    b:= InttoStr(a);
    c:=10000-a;
    d:=inttoStr(c);
    //add space to front to make length of four characters
    while length(b) < 4 do b:= ' '+b;
    {if length(b) = 2 then b:= '  '+b;
    if length(b) = 3 then b:= ' '+b;
    b:= copy(' ',4-length(c) + c + ':' + b;}
    pad := b;
end;
end.

