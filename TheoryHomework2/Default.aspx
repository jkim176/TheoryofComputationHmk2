<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TheoryHomework2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Automata Machines</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="automata.js"></script>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div class="content">
            <h3>Homework 2</h3>
            <h5>Chance, Kevin, Jinsik, Victor</h5>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>PDA - Palidrome</th>
                        <th>PDA - 0<sup>n</sup>1<sup>n</sup></th>
                        <th>CFG - Palidrome (S -> e|0|1|0S0|1S1)</th>
                    </tr>
                </thead>
                <tr>
                    <td><asp:Textbox class="form-control" ID="pdaText" runat="server" /></td>
                    <td><asp:Textbox class="form-control" ID="pda2Text" runat="server" /></td>
                    <td><asp:Textbox class="form-control" ID="cfgText" runat="server" /></td>
                </tr>
                <tr><td colspan="3"><button class="btn btn-primary process">Process</button><button class="btn btn-primary reset">Reset</button></td></tr>
                <tr class="graphRow">
                    <td><asp:Panel class="graphPanel pda" graph="pda" ID="pdaPanel" runat="server">
                        <svg height="100" width="120">
                          <circle class="Q0" cx="50" cy="50" r="40" stroke="black" stroke-width="3" fill="#fff" /> 
                          <text x="43" y="55" class="small">Q0</text>
                        </svg>
                        <svg height="100" width="120">
                          <circle class="Q1" cx="50" cy="50" r="40" stroke="black" stroke-width="3" fill="#fff" />
                          <circle cx="50" cy="50" r="20" stroke="black" stroke-width="3" fill="#fff" /> 
                          <text x="43" y="55" class="small">Q1</text>
                        </svg>
                        <div class="path"></div>
                        <div class="stackEmpty"></div>
                        </asp:Panel>
                    </td>
                    <td><asp:Panel class="graphPanel pda2" graph="pda2" ID="pda2Panel" runat="server">
                        <svg height="100" width="120">
                          <circle class="Q0" cx="50" cy="50" r="40" stroke="black" stroke-width="3" fill="#fff" /> 
                          <text x="43" y="55" class="small">Q0</text>
                        </svg>
                        <svg height="100" width="120">
                          <circle class="Q1" cx="50" cy="50" r="40" stroke="black" stroke-width="3" fill="#fff" /> 
                          <circle cx="50" cy="50" r="20" stroke="black" stroke-width="3" fill="#fff" /> 
                          <text x="43" y="55" class="small">Q1</text>
                        </svg>
                        <div class="path"></div>
                        <div class="stackEmpty"></div>
                        </asp:Panel>
                    </td>
                    <td><asp:Panel class="graphPanel cfg" graph="cfg" ID="cfgPanel" runat="server" /></td>
                </tr>
                <tr class="buttonRow">
                    <td>
                        <button graph="pda" class="btn btn-success pda" disabled>Start</button>
                    </td>
                    <td>
                        <button graph="pda2" class="btn btn-success pda2" disabled>Start</button>

                    </td>
                    <td>
                        <button graph="cfg" class="btn btn-success cfg" disabled>Start</button>
                    </td>
                </tr>
            </table>
        </div>
    </form>
    </center>
    <style>
        .btn {
                padding: 3px 3px
        }
        .btn:disabled{
            background:#ddd;
        }
        body {
            background: #ddd;
        }
        .content {
            width: 80%;
        }
        table {
            text-align: center;
            background: #fff;
        }

        .graphPanel {
            height: 240px;
            overflow-y:auto;
        }
        .graphPanel.cfg div{
            font-size: 18px;
        }
    </style>
</body>
</html>
