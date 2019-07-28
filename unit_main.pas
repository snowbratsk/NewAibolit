unit unit_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, unit_DM, GridsEh, DBGridEh, DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, ZDataset, ZAbstractConnection,
  ZConnection, ComCtrls;

type
  Tform_main = class(TForm)
    gb_mainmenu: TGroupBox;
    b_cards: TButton;
    gb_cards: TGroupBox;
    b_changedoctor: TButton;
    l_priemvedetdoctor: TLabel;
    l_filial: TLabel;
    gb_doctorfilial: TGroupBox;
    l_filial_change: TLabel;
    l_priemvedetdoctor_change: TLabel;
    cb_selectdoctor: TComboBox;
    cb_selectfilial: TComboBox;
    ZConnection: TZConnection;
    tab_team: TZTable;
    DS_team: TDataSource;
    ed_priemvedet: TEdit;
    ed_filial: TEdit;
    grid_cards: TDBGridEh;
    gb_cardtools: TGroupBox;
    l_fio: TLabel;
    search_fio: TEdit;
    search_klichka: TEdit;
    cb_addsearch: TCheckBox;
    l_klichka: TLabel;
    gb_addsearch: TGroupBox;
    search_tel: TEdit;
    search_breed: TEdit;
    search_sex: TComboBox;
    l_tel: TLabel;
    l_breed: TLabel;
    l_sex: TLabel;
    gb_nowselected: TGroupBox;
    l_nowselected: TLabel;
    sql_cards: TZQuery;
    ds_cards: TDataSource;
    tab_people: TZTable;
    tab_pet: TZTable;
    b_editdata: TButton;
    b_lookhistory: TButton;
    b_lookanaliz: TButton;
    b_lookrentgen: TButton;
    b_printcard: TButton;
    b_addtoline: TButton;
    b_clear: TButton;
    b_addpatient: TButton;
    gb_registration: TGroupBox;
    gb_owner: TGroupBox;
    gb_pet: TGroupBox;
    ed_owner_fio: TEdit;
    ed_owner_adr: TEdit;
    ed_owner_tel: TEdit;
    ed_owner_misc: TEdit;
    l_owner_fio: TLabel;
    l_owner_adr: TLabel;
    l_owner_tel: TLabel;
    l_owner_misc: TLabel;
    ed_pet_klichka: TEdit;
    ed_pet_breed: TEdit;
    cb_pet_kind: TComboBox;
    cb_pet_sex: TComboBox;
    dt_pet_birth: TDateTimePicker;
    cb_pet_status: TComboBox;
    cb_pet_chronic: TComboBox;
    ed_pet_kind: TEdit;
    l_pet_klichka: TLabel;
    l_pet_kind: TLabel;
    l_pet_sex: TLabel;
    l_pet_breed: TLabel;
    l_pet_birth: TLabel;
    l_pet_status: TLabel;
    l_pet_chronic: TLabel;
    b_no_breed: TButton;
    b_savepatient: TButton;
    procedure FormCreate(Sender: TObject);
    procedure b_changedoctorClick(Sender: TObject);
    procedure b_cardsClick(Sender: TObject);
    procedure cb_selectdoctorChange(Sender: TObject);
    procedure cb_selectfilialChange(Sender: TObject);
    procedure grid_cardsCellClick(Column: TColumnEh);
    procedure DoSearch;
    procedure search_fioChange(Sender: TObject);
    procedure search_klichkaChange(Sender: TObject);
    procedure search_telChange(Sender: TObject);
    procedure search_breedChange(Sender: TObject);
    procedure search_sexChange(Sender: TObject);
    procedure cb_addsearchClick(Sender: TObject);
    procedure b_clearClick(Sender: TObject);
    procedure b_addpatientClick(Sender: TObject);
    procedure b_no_breedClick(Sender: TObject);
    procedure cb_pet_kindChange(Sender: TObject);
    procedure b_savepatientClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  form_main: Tform_main;

implementation

{$R *.dfm}

//�������� ������� �����
procedure Tform_main.FormCreate(Sender: TObject);
begin
//������ ����������� ������� �����, ����� ��� ��������� ������������ ��� �� �����������
form_main.Constraints.MinHeight:=screen.Height-8;
form_main.Constraints.MinWidth:=screen.Width;

//����� ��������� ����������� � ��
  with ZConnection do
    begin
      HostName:='87.103.173.109'; // 192.168.88.249
      Port:=3306;
      User:='aibolit';
      Password:='aibolit';
      Catalog:='aibolit';
    //������� ������������ � ��
    try
      Connected:=True;
      tab_team.active:=true;
      tab_pet.active:=true;
      tab_people.active:=true;
      sql_cards.Active:=true;
    except
      ShowMessage('���-�� �� ���! ����������� � �� �� ���������!');
      exit;
    end;
    end;

//��������� ��������� ��������� �� ����
tab_team.First;
cb_selectdoctor.Clear;
while not tab_team.Eof do
begin
cb_selectdoctor.Items.Add(tab_team.fieldbyname('team_fio').AsString);
tab_team.Next;
end;

//��������� ��������� ��������� �� ����
tab_team.First;
cb_selectfilial.Clear;
while not tab_team.Eof do
begin
//���� � ���������� ������ ������� ��� ���, �� ���������
if  cb_selectfilial.Items.IndexOf(tab_team.fieldbyname('team_filial').AsString)=-1
then cb_selectfilial.Items.Add(tab_team.fieldbyname('team_filial').AsString);
tab_team.Next;
end;
//������� ����� ���� ������ �������
gb_doctorfilial.BringToFront;
end;


//������� ������ "������� �������"
procedure Tform_main.b_changedoctorClick(Sender: TObject);
begin
//������� ����� ���� ������ �������
gb_doctorfilial.BringToFront;
end;

//������� ������ "���������"
procedure Tform_main.b_cardsClick(Sender: TObject);
begin
//������� ����� ���� ���������
gb_cards.BringToFront;
end;


procedure Tform_main.cb_selectdoctorChange(Sender: TObject);
begin
//��� ����� ������� �������� �������������� ��� �� ��������� ������
tab_team.Locate('team_id',(cb_selectdoctor.ItemIndex+1),[]);
cb_selectfilial.ItemIndex:=cb_selectfilial.Items.IndexOf(tab_team.fieldbyname('team_filial').AsString);
//����������� ������ � ������� � ������
ed_priemvedet.Text:=cb_selectdoctor.Text;
ed_filial.Text:=cb_selectfilial.text;
end;

procedure Tform_main.cb_selectfilialChange(Sender: TObject);
begin
//����������� ������ � ������
ed_filial.Text:=cb_selectfilial.text;
end;

//���� �� ������ ��������� ���� � �������� people � pet ��������� � ������� � ����������� �� � l_nowselected 
procedure Tform_main.grid_cardsCellClick(Column: TColumnEh);
begin
tab_people.Locate('people_id',sql_cards.fieldbyname('people_id').AsString,[]);
tab_pet.Locate('pet_id',sql_cards.fieldbyname('pet_id').AsString,[]);
if tab_pet.fieldbyname('pet_sex').AsString = '�����' then gb_nowselected.Caption:='������ �������:' else gb_nowselected.Caption:='������ ������:';
l_nowselected.Caption:=tab_pet.fieldbyname('pet_kind').AsString + ' : ' + tab_pet.fieldbyname('pet_name').AsString + ' , �������� : ' + tab_people.fieldbyname('people_fio').AsString
+ ' , ����� : ' + tab_people.fieldbyname('people_adress').AsString + ' , ���. : ' + tab_people.fieldbyname('people_tel').AsString;
end;

//��������� ���������� ������� ���������
procedure Tform_main.DoSearch;
var
search_string:string;
begin
search_string:='';
if length (search_fio.Text)>0 then search_string:='people_fio LIKE ' + #39+ '*' + search_fio.Text + '*' + #39;
if length (search_klichka.Text)>0 then
            begin
            if length (search_string)>0 then search_string:=search_string + ' AND ';
            search_string:=search_string + 'klichka LIKE ' + #39+ '*' + search_klichka.Text + '*' + #39;
            end;
if cb_addsearch.Checked then //���� ������� ���.�����
  begin
  if length (search_tel.Text)>0 then
            begin
            if length (search_string)>0 then search_string:=search_string + ' AND ';
            search_string:=search_string + 'people_tel LIKE ' + #39+ '*' + search_tel.Text + '*' + #39;
            end;
  if length (search_breed.Text)>0 then
            begin
            if length (search_string)>0 then search_string:=search_string + ' AND ';
            search_string:=search_string + 'pet_breed LIKE ' + #39+ '*' + search_breed.Text + '*' + #39;
            end;
  if length (search_sex.Text)>0 then
            begin
            if length (search_string)>0 then search_string:=search_string + ' AND ';
            search_string:=search_string + 'pet_sex LIKE ' + #39+ '*' + search_sex.Text + '*' + #39;
            end;
  end;
sql_cards.filter:=search_string;
sql_cards.filtered:=True;
end;

//���� �������� ������ �� ���������
procedure Tform_main.search_fioChange(Sender: TObject);
begin
DoSearch;
end;
procedure Tform_main.search_klichkaChange(Sender: TObject);
begin
DoSearch;
end;
procedure Tform_main.search_telChange(Sender: TObject);
begin
DoSearch;
end;
procedure Tform_main.search_breedChange(Sender: TObject);
begin
DoSearch;
end;
procedure Tform_main.search_sexChange(Sender: TObject);
begin
DoSearch;
end;
procedure Tform_main.cb_addsearchClick(Sender: TObject);
begin
gb_addsearch.Enabled:=cb_addsearch.Checked;
end;
//����� ����� �������� ������ �� ���������

//��� ������� ������ "��������" ��� ���� ���������
procedure Tform_main.b_clearClick(Sender: TObject);
begin
search_fio.Text:='';
search_klichka.Text:='';
search_tel.Text:='';
search_breed.Text:='';
search_sex.Text:='';
DoSearch;
end;

//���� �� ������ "����������� ��������"
procedure Tform_main.b_addpatientClick(Sender: TObject);
begin
//������� ����� ���� �����������
gb_registration.BringToFront;
end;

procedure Tform_main.b_no_breedClick(Sender: TObject);
begin
//"�/�" � ���� "������"
ed_pet_breed.Text:='�/�';
end;

procedure Tform_main.cb_pet_kindChange(Sender: TObject);
begin
//���� ������� "������", ���������� ���� ����� ����,
//����� ��������� ��������� � ����� ����� ����
if cb_pet_kind.ItemIndex=5 then
  begin
  ed_pet_kind.Visible:=true;
  ed_pet_kind.Text:='';
  end
  else
  begin
  ed_pet_kind.Visible:=false;
  ed_pet_kind.Text:=cb_pet_kind.Text;
  end;
end;

procedure Tform_main.b_savepatientClick(Sender: TObject);
begin
//��� ������� �� ������ ��������� ��������� ������� tab_people �� ����������
//��������� ���� ������� � edit-���, ��������� ������� � ��� �������� ��������� � �����
tab_people.Append;
tab_people.fieldbyname('people_fio').AsString:=ed_owner_fio.text;
tab_people.fieldbyname('people_adress').AsString:=ed_owner_adr.text;
tab_people.fieldbyname('people_tel').AsString:=ed_owner_tel.text;
tab_people.fieldbyname('people_misc').AsString:=ed_owner_misc.text;
tab_people.Post;
tab_people.Last;

//������ ��������� �� ���������� �������� tab_pet, ��� �� �� ��������� � ���������
tab_pet.Append;
tab_pet.fieldbyname('pet_name').AsString:=ed_pet_klichka.text;
tab_pet.fieldbyname('pet_kind').AsString:=ed_pet_kind.text;
tab_pet.fieldbyname('pet_sex').AsString:=cb_pet_sex.text;
tab_pet.fieldbyname('pet_breed').AsString:=ed_pet_breed.text;
tab_pet.fieldbyname('pet_birthdate').AsDateTime:=dt_pet_birth.Date;
tab_pet.fieldbyname('pet_status').AsString:=cb_pet_status.text;
tab_pet.fieldbyname('pet_chronic').AsString:=cb_pet_chronic.text;
//����������� ���������
tab_pet.fieldbyname('pet_owner').AsInteger:=tab_people.fieldbyname('people_id').AsInteger;
//���������
tab_pet.Post;
//��������� ��
tab_people.Refresh;
tab_pet.Refresh;
sql_cards.Refresh;

end;

end.
