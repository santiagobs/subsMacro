Attribute VB_Name = "Module1"
Sub semanasSubs()

Dim subsArray() As Variant
Dim i As Integer
Dim j As Integer
Dim s As Integer
Dim k As Integer
Dim temp1 As Variant
Dim temp2 As Variant

' Leer el rango total de subestaciones y almacenarlo en una matriz
subsArray = Sheets("Sheet2").Range("A1:B438").Value2
ActiveSheet.Cells.ClearContents

k = 1
For i = 1 To 437
    temp1 = subsArray(i, 1)
    temp2 = subsArray(i, 2)
     s = 1
    For j = k To 22724
        Cells(j, 1) = temp1
        Cells(j, 2) = temp2
        Cells(j, 3) = "Semana " & s
    s = s + 1
    Next j
    k = k + 52

Next i


End Sub
