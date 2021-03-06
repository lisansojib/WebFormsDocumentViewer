﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormsDocumentViewer.UI.Default" %>

<%@ Register Assembly="WebFormsDocumentViewer" Namespace="WebFormsDocumentViewer" TagPrefix="cc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Document Viewer</title>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <link rel="stylesheet" href="Content/Site.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="jumbotron text-center">
            <h2>Document Viewer custom control for Web Forms</h2>
            <p>
                This currently supports PDF, Word, PowerPoint, Excel, RichTextFormat, Text and Mail files. For more details check the
                <a href="https://github.com/HajbokRobert/WebFormsDocumentViewer" target="_blank">Github repository</a>.
            </p>
        </div>
        <div class="container">
            <div class="row">
                <div class="col col-md-6">
                    <div class="card text-center">
                        <div class="card-block">
                            <h4 class="card-title">PDF Viewer</h4>
                            <p class="card-text">
                                This renders a PDF document (.pdf) in an iframe and uses 
                                <a href="https://mozilla.github.io/pdf.js/" target="_blank">PDF.js</a> as the PDF renderer 
                                instead of <a href="https://acrobat.adobe.com/uk/en/" target="_blank">Adobe Reader</a>.
                            </p>
                            <cc:DocumentViewer runat="server" Width="100%" Height="500" FilePath="~/Samples/sample.pdf" PdfRenderer="PdfJs" />
                        </div>
                    </div>
                </div>
                <div class="col col-md-6">
                    <div class="card text-center">
                        <div class="card-block">
                            <h4 class="card-title">Word Viewer</h4>
                            <p class="card-text">
                                This converts the Word document (.doc or .docx) to PDF and renders it in an iframe. 
                                You should have Microsoft Office installed for this.
                            </p>
                            <cc:DocumentViewer runat="server" Width="100%" Height="500" FilePath="~/Samples/sample.docx" TempDirectoryPath="~/TempFiles" />
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col col-md-6">
                    <div class="card text-center">
                        <div class="card-block">
                            <h4 class="card-title">PowerPoint Viewer</h4>
                            <p class="card-text">
                                This converts the PowerPoint document (.ppt or .pptx) to PDF and renders it in an iframe. 
                                You should have Microsoft Office installed for this.
                            </p>
                            <cc:DocumentViewer runat="server" Width="100%" Height="500" FilePath="~/Samples/sample.pptx" TempDirectoryPath="~/TempFiles" />
                        </div>
                    </div>
                </div>
                <div class="col col-md-6">
                    <div class="card text-center">
                        <div class="card-block">
                            <h4 class="card-title">Excel Viewer</h4>
                            <p class="card-text">
                                This converts the Excel document (.xls or .xlsx) to HTML and renders it in an iframe. 
                                You should have Microsoft Office installed for this.
                            </p>
                            <cc:DocumentViewer runat="server" Width="100%" Height="500" FilePath="~/Samples/sample.xlsx" TempDirectoryPath="~/TempFiles" />
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col col-md-6">
                    <div class="card text-center">
                        <div class="card-block">
                            <h4 class="card-title">RichTextFormat Viewer</h4>
                            <p class="card-text">
                                This converts the RichTextFormat document (.rtf) to PDF and renders it in an iframe using 
                                <a href="https://mozilla.github.io/pdf.js/" target="_blank">PDF.js</a>. 
                                You should have Microsoft Office installed for this.
                            </p>
                            <cc:DocumentViewer runat="server" Width="100%" Height="500" FilePath="~/Samples/sample.rtf" TempDirectoryPath="~/TempFiles"
                                PdfRenderer="PdfJs" />
                        </div>
                    </div>
                </div>
                <div class="col col-md-6">
                    <div class="card text-center">
                        <div class="card-block">
                            <h4 class="card-title">Text Viewer</h4>
                            <p class="card-text">
                                This renders a Text document (.txt) in an iframe. No conversion is needed as browsers support
                                this by default.
                            </p>
                            <cc:DocumentViewer runat="server" Width="100%" Height="500" FilePath="~/Samples/sample.txt" />
                        </div>
                    </div>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col col-md-6">
                    <div class="card text-center">
                        <div class="card-block">
                            <h4 class="card-title">Mail Viewer</h4>
                            <p class="card-text">
                                This converts the Mail file (.msg or .eml) to HTML and renders it in an iframe.
                                You should have Microsoft Office installed for this.
                            </p>
                            <cc:DocumentViewer runat="server" Width="100%" Height="500" FilePath="~/Samples/sample.msg" />
                        </div>
                    </div>
                </div>
            </div>
            <br />
        </div>
    </form>
</body>
</html>
