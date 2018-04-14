VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form Form2 
   Appearance      =   0  'Flat
   BackColor       =   &H00000000&
   Caption         =   "Chat Messenger-Server"
   ClientHeight    =   5730
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10155
   ForeColor       =   &H0000FFFF&
   LinkTopic       =   "Form2"
   ScaleHeight     =   5730
   ScaleWidth      =   10155
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command7 
      BackColor       =   &H009ED3D3&
      Caption         =   "exit"
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
      Left            =   7200
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   5160
      Width           =   2775
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
      Left            =   3360
      Style           =   1  'Graphical
      TabIndex        =   12
      Top             =   840
      Width           =   1575
   End
   Begin VB.TextBox nick 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Bradley Hand ITC"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   360
      Left            =   1680
      TabIndex        =   11
      Top             =   840
      Width           =   1455
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
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   840
      Width           =   2055
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
      Left            =   7200
      Style           =   1  'Graphical
      TabIndex        =   8
      Top             =   4680
      Width           =   2775
   End
   Begin MSWinsockLib.Winsock sock 
      Left            =   6600
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
      Left            =   5760
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   4920
      Width           =   1335
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
      ForeColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   240
      TabIndex        =   1
      Top             =   4920
      Width           =   5415
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
      ForeColor       =   &H00FFFFFF&
      Height          =   3060
      ItemData        =   "newserver2.frx":0000
      Left            =   240
      List            =   "newserver2.frx":0002
      TabIndex        =   0
      Top             =   1320
      Width           =   6855
   End
   Begin VB.Line Line4 
      BorderColor     =   &H8000000B&
      BorderWidth     =   2
      X1              =   9960
      X2              =   9960
      Y1              =   960
      Y2              =   4560
   End
   Begin VB.Line Line1 
      BorderColor     =   &H8000000B&
      BorderWidth     =   2
      X1              =   7200
      X2              =   9960
      Y1              =   960
      Y2              =   960
   End
   Begin VB.Line Line5 
      BorderColor     =   &H8000000B&
      BorderWidth     =   2
      X1              =   7200
      X2              =   9960
      Y1              =   2760
      Y2              =   2760
   End
   Begin VB.Label Label3 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Your name"
      BeginProperty Font 
         Name            =   "Bradley Hand ITC"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   255
      Left            =   360
      TabIndex        =   10
      Top             =   840
      Width           =   1455
   End
   Begin VB.Line Line3 
      BorderColor     =   &H8000000B&
      BorderWidth     =   2
      X1              =   7200
      X2              =   7200
      Y1              =   4560
      Y2              =   960
   End
   Begin VB.Line Line2 
      BorderColor     =   &H8000000B&
      BorderWidth     =   2
      X1              =   7200
      X2              =   9960
      Y1              =   4560
      Y2              =   4560
   End
   Begin VB.Label yip 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
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
      Left            =   8400
      TabIndex        =   7
      Top             =   3840
      Width           =   105
   End
   Begin VB.Label Label4 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Your IP is:"
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
      TabIndex        =   6
      Top             =   3000
      Width           =   1245
   End
   Begin VB.Label hip 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "0.0.0.0"
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
      Left            =   8070
      TabIndex        =   5
      Top             =   1560
      Width           =   840
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "No One Is Connected"
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
      Height          =   255
      Left            =   7320
      TabIndex        =   4
      Top             =   1080
      Width           =   2535
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Private Chat Messenger-Server"
      BeginProperty Font 
         Name            =   "Viner Hand ITC"
         Size            =   18
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
      Top             =   240
      Width           =   6135
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



Private Sub Command4_Click()
On Error Resume Next
Label2.Caption = "No one is connected"
hip.Caption = "0.0.0.0"
Dim a, b As String
a = "User has disconected from chat"
sock.SendData a

DoEvents
sock.Close
b = InputBox("Enter the port to use")
sock.LocalPort = b
sock.Listen

End Sub

Private Sub Command5_Click()
Open "C:\magix.nfo" For Output As #1
Print #1, nick.Text
Close #1
MsgBox "Saved!"
End Sub



Private Sub Command7_Click()

End
End Sub

Private Sub Form_Load()
On Error Resume Next
Dim b As String
b = InputBox("Enter The Port To Use")
sock.LocalPort = b
sock.Listen
yip.Caption = sock.LocalIP
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

Private Sub sock_ConnectionRequest(ByVal requestID As Long)
If sock.State <> sckClosed Then sock.Close
sock.Accept requestID
Label2.Caption = "CONNECTED"
chat.AddItem "connected"
hip.Caption = sock.RemoteHostIP


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

