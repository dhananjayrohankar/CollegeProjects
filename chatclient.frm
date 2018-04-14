VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   Caption         =   "Chat Messenger-Client"
   ClientHeight    =   4800
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   8700
   LinkTopic       =   "Form1"
   ScaleHeight     =   4800
   ScaleWidth      =   8700
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      BackColor       =   &H009ED3D3&
      Caption         =   "Exit"
      BeginProperty Font 
         Name            =   "Algerian"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   4920
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   2880
      Width           =   3615
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H009ED3D3&
      Caption         =   "About"
      BeginProperty Font 
         Name            =   "Algerian"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   2400
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   3840
      Width           =   3615
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H009ED3D3&
      Caption         =   "Connect To  Server"
      BeginProperty Font 
         Name            =   "Algerian"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   240
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   2880
      Width           =   3615
   End
   Begin VB.Shape Shape1 
      Height          =   1215
      Left            =   240
      Top             =   2040
      Width           =   4215
   End
   Begin VB.Line Line1 
      X1              =   240
      X2              =   4440
      Y1              =   1920
      Y2              =   1920
   End
   Begin VB.Label lbl 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      AutoSize        =   -1  'True
      BackColor       =   &H80000005&
      BackStyle       =   0  'Transparent
      Caption         =   "Chat Messenger"
      BeginProperty Font 
         Name            =   "Viner Hand ITC"
         Size            =   36
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   1170
      Left            =   1575
      TabIndex        =   1
      Top             =   960
      Width           =   5340
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error Resume Next
Form2.Show
Dim a, b As String
a = InputBox("Enter the IP to connect to")
b = InputBox("Enter the Port to use")
Form2.sock.Connect a, b
Me.Hide
End Sub

Private Sub Command2_Click()
MsgBox "Made by Dhananjay, Ankush,Anant, Mohsin"
MsgBox "ChatMessenger is a personal chat server to chat with someone privately"
MsgBox "You may open this program more than once and chat with more than one person"
MsgBox "Best Of Luck"
Form1.Show
End Sub

Private Sub Command3_Click()
End
End Sub



