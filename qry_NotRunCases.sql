SELECT T.TestName, C.CaseID, C.StepNumber, C.Action, C.InputData, C.ExpectedResult
FROM Tests AS T
INNER JOIN TestCases AS C ON T.TestID = C.TestID
WHERE C.Status = "Not Run"
ORDER BY T.TestID, C.StepNumber;