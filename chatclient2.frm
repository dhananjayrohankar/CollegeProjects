VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form2 
   BackColor       =   &H00000000&
   Caption         =   "Chat Messenger-Client"
   ClientHeight    =   5730
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10155
   LinkTopic       =   "Form2"
   ScaleHeight     =   5730
   ScaleWidth      =   10155
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      BackColor       =   &H000000C0&
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "Algerian"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7800
      TabIndex        =   9
      Top             =   4920
      Width           =   2295
   End
   Begin VB.CommandButton Command5 
      BackColor       =   &H009ED3D3&
      Caption         =   "Save"
      BeginProperty Font 
         Name            =   "Algerian"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3600
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   600
      Width           =   1095
   End
   Begin VB.TextBox nick 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Bradley Hand ITC"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   405
      Left            =   1680
      TabIndex        =   7
      Top             =   600
      Width           =   1575
   End
   Begin VB.CommandButton Command4 
      BackColor       =   &H009ED3D3&
      Caption         =   "Disconnect"
      BeginProperty Font 
         Name            =   "Algerian"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   5160
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   600
      Width           =   2175
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H009ED3D3&
      Caption         =   "Clear History"
      BeginProperty Font 
         Name            =   "Algerian"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7800
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   4320
      Width           =   2295
   End
   Begin MSWinsockLib.Winsock sock 
      Left            =   6840
      Top             =   3960
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H009ED3D3&
      Caption         =   "Send"
      BeginProperty Font 
         Name            =   "Algerian"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6480
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   4800
      Width           =   1095
   End
   Begin VB.TextBox outtext 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Bradley Hand ITC"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000B&
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   4800
      Width           =   6135
   End
   Begin VB.ListBox chat 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Bradley Hand ITC"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000B&
      Height          =   3360
      Left            =   240
      TabIndex        =   0
      Top             =   1080
      Width           =   7095
   End
   Begin VB.Line Line4 
      BorderColor     =   &H8000000B&
      BorderWidth     =   2
      X1              =   7560
      X2              =   10200
      Y1              =   4200
      Y2              =   4200
   End
   Begin VB.Label Label12 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "GCOE Chandrapur"
      BeginProperty Font 
         Name            =   "Bradley Hand ITC"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   300
      Left            =   7800
      TabIndex        =   19
      Top             =   3720
      Width           =   1920
   End
   Begin VB.Label Label11 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Comp. Sci. & Engg Dept"
      BeginProperty Font 
         Name            =   "Bradley Hand ITC"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   300
      Left            =   7680
      TabIndex        =   18
      Top             =   3360
      Width           =   2295
   End
   Begin VB.Label Label10 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Karamarkar"
      BeginProperty Font 
         Name            =   "Bradley Hand ITC"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   300
      Left            =   8160
      TabIndex        =   17
      Top             =   3000
      Width           =   1290
   End
   Begin VB.Label Label9 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Pro. Bhagyashree"
      BeginProperty Font 
         Name            =   "Bradley Hand ITC"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   300
      Left            =   7680
      TabIndex        =   16
      Top             =   2640
      Width           =   1755
   End
   Begin VB.Label Label8 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Guided By"
      BeginProperty Font 
         Name            =   "Bradley Hand ITC"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   360
      Left            =   7680
      TabIndex        =   15
      Top             =   2160
      Width           =   1320
   End
   Begin VB.Label Label7 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Mohsin Railiwale"
      BeginProperty Font 
         Name            =   "Bradley Hand ITC"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   300
      Left            =   7680
      TabIndex        =   14
      Top             =   1320
      Width           =   1785
   End
   Begin VB.Label Label6 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Anantkumar Salame"
      BeginProperty Font 
         Name            =   "Bradley Hand ITC"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   300
      Left            =   7680
      TabIndex        =   13
      Top             =   1680
      Width           =   2235
   End
   Begin VB.Label Label5 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Ankush Butole"
      BeginProperty Font 
         Name            =   "Bradley Hand ITC"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   300
      Left            =   7680
      TabIndex        =   12
      Top             =   960
      Width           =   1545
   End
   Begin VB.Label Label4 
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H00000000&
      BackStyle       =   0  'Transparent
      Caption         =   "Dhananjay Rohankar"
      BeginProperty Font 
         Name            =   "Bradley Hand ITC"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   420
      Left            =   7680
      TabIndex        =   11
      Top             =   600
      Width           =   2235
   End
   Begin VB.Label Label3 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      Caption         =   "Created By"
      BeginProperty Font 
         Name            =   "Bradley Hand ITC"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   7680
      TabIndex        =   10
      Top             =   120
      Width           =   2175
   End
   Begin VB.Line Line3 
      X1              =   7560
      X2              =   9000
      Y1              =   5280
      Y2              =   5280
   End
   Begin VB.Line Line2 
      X1              =   7440
      X2              =   8760
      Y1              =   4800
      Y2              =   4800
   End
   Begin VB.Label Label2 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Your Name"
      BeginProperty Font 
         Name            =   "Bradley Hand ITC"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   360
      TabIndex        =   6
      Top             =   720
      Width           =   1215
   End
   Begin VB.Line Line1 
      BorderColor     =   &H8000000E&
      BorderWidth     =   2
      X1              =   7560
      X2              =   7560
      Y1              =   120
      Y2              =   4200
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Private Chat Messenger-Client"
      BeginProperty Font 
         Name            =   "Viner Hand ITC"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   120
      Width           =   5895
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public old As String
Private Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer

Private Sub Command1_Click()
On Error Resume Next
Dim a As String
old = outtext.Text
a = "" & nick.Text & "::  " & outtext.Text
sock.SendData a
DoEvents
chat.AddItem "" & nick.Text & "::  " & outtext.Text
outtext.Text = ""
If chat.ListCount = 25 Then
chat.Clear
End If
End Sub

Private Sub Command2_Click()
chat.Clear
End Sub



Private Sub Command3_Click()
End
End Sub

Private Sub Command4_Click()
On Error Resume Next
Dim a As String
a = "User has disconected from chat"
sock.SendData a

DoEvents
sock.Close



Dim c, b As String
c = InputBox("Enter the IP to connect to")
b = InputBox("Enter the Port to use")
Form2.sock.Connect c, b

End Sub

Private Sub Command5_Click()
Open "C:\magix.nfo" For Output As #1
Print #1, nick.Text
Close #1
MsgBox "Saved!"
End Sub





Private Sub Form_Load()
On Error Resume Next
Dim a As String
Open "C:\magix.nfo" For Input As #1
Input #1, a
Close #1
nick.Text = a

If App.PrevInstance Then
        
     
        MsgBox "A previous Instance of Magix Chat has been Detected.Please use a diffrent port with the other instance"
        End If

End Sub

Private Sub Form_Terminate()
On Error Resume Next
Dim a As String
a = "User has disconected from chat"
sock.SendData a

DoEvents
sock.Close
End
End Sub

Private Sub Form_Unload(Cancel As Integer)
On Error Resume Next
Dim a As String
a = "User has disconected from chat"
sock.SendData a

DoEvents
sock.Close
End
End Sub

Private Sub outtext_KeyPress(KeyAscii As Integer)
If GetAsyncKeyState(vbKeyReturn) Then
Command1_Click
End If
End Sub

Private Sub sock_DataArrival(ByVal bytesTotal As Long)
Dim dat As String
sock.GetData dat
If dat = "User has disconected from chat" Then
chat.AddItem dat
Else
chat.AddItem dat
End If
End Sub

