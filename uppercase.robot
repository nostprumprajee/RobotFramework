*** Setting ***
Library     String

*** Variables ***
${text}     hello nost
${text2}     hello Test
${text3}     Hello NosT
${text4}     HelLo TEst

*** Test Cases ***
TC01 Uppercase String
    Check Uppercase1     ${text}
TC02 Uppercase String
    Check Uppercase1     ${text2}
TC03 Uppercase String
    Check Uppercase1     ${text3}
TC04 Uppercase String
    Check Uppercase2     ${text2}
TC05 Uppercase String
    Check Uppercase2     ${text4}
TC06 Lowercase String
    Check Lowercase1     ${text3}

*** Keyword ***
Check Uppercase1
    [Arguments]     ${path}
    ${str} =    Convert to Uppercase    ${path}
    Should Be Equal     ${str}  HELLO NOST
Check Uppercase2
    [Arguments]     ${path}
    ${str} =    Convert to Uppercase    ${path}
    Should Be Equal     ${str}  HELLO TEST
Check Lowercase1
    [Arguments]     ${path}
    ${str} =    Convert to Lowercase    ${path}
    Should Be Equal     ${str}  hello nost
