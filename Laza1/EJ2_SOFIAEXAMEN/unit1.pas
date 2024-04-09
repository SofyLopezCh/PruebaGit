unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnInicializar: TButton;
    edt1: TEdit;
    gpbPaneles: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    rdgPanel: TRadioGroup;
    rdgColor: TRadioGroup;
    procedure btnInicializarClick(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure rdgColorClick(Sender: TObject);
    procedure rdgPanelClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.rdgPanelClick(Sender: TObject);


begin
    case rdgPanel.Itemindex of

    0:
      begin
         edt1.Text:='Seleccionado Panel 1';
         Panel2.Color:=clWhite;
            edt1.color:=clWHITE;

      end;
        1:
      begin
         edt1.Text:='Seleccionado Panel 2';
         Panel1.Color:=clWhite;
            edt1.color:=clWHITE;

      end;

    end;




end;

procedure TForm1.btnInicializarClick(Sender: TObject);
begin
    panel1.color:=clWhite;
    panel2.color:=clwhite;
    rdgPanel.Itemindex:= -1;
    rdgColor.Itemindex:= -1;
       edt1.color:=claQUA;
    edt1.Text:=' ';

end;

procedure TForm1.edt1Change(Sender: TObject);
begin

end;

procedure TForm1.rdgColorClick(Sender: TObject);
begin

    if   (rdgPanel.Itemindex = 0) then

    case rdgColor.Itemindex of

    0:
      begin
       panel1.color:=clred;
       edt1.color:=clred;
       edt1.text:='COLOR ROJO';

      end;
        1:
      begin
       panel1.color:=clyellow;
          edt1.color:=clYELLOW;
       edt1.text:='COLOR AMARILLO';

      end;
        2:
          begin
          panel1.color:=clgreen;
          edt1.color:=clGREEN;
       edt1.text:='COLOR VERDE';
       end;


    end;

     if   (rdgPanel.Itemindex = 1) then

    case rdgColor.Itemindex of

    0:
      begin
       panel2.color:=clred;
       edt1.color:=clred;
       edt1.text:='COLOR ROJO';

      end;
        1:
      begin
        panel2.color:=clyellow;
          edt1.color:=clYELLOW;
       edt1.text:='COLOR AMARILLO';

      end;
        2:
         begin
          panel2.color:=clgreen;
             edt1.color:=clgreen;
             edt1.text:='COLOR VERDE';
         end;



    end;


end;

end.

