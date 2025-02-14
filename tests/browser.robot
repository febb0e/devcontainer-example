*** Settings ***
Documentation       Sample Browser Tests

Library             Browser
Resource            devcontainer-example/keywords.resource
Resource            devcontainer-example/common.resource

Test Setup          New Page    ${URL}:${PORT}


*** Test Cases ***
Add And Delete Single Todo
    [Documentation]    Tests the creation and deletion of a single todo in the app
    [Tags]    regression
    VAR    @{todos}    Hold Robocon Workshop
    Add Todos To List    @{todos}
    Verify Todos Exist    @{todos}
    Mark Todos As Done    @{todos}
    Verify Todos Are Done    @{todos}
    Delete Done Elements    @{todos}
    Verify Elements Are Deleted    @{todos}

Add And Delete Multiple Todos
    [Documentation]    Tests the creation and deletion of multiple todos in the app
    [Tags]    regression
    VAR    @{todos}    Charge Laptop
    ...    Install VSCode
    ...    Get To Know Robotcode
    ...    Develop Testautomation
    ...    Visit Sauna
    ...    Get Some Beers
    Add Todos To List    @{todos}
    Verify Todos Exist    @{todos}
    Mark Todos As Done    @{todos}
    Verify Todos Are Done    @{todos}
    Delete Done Elements    @{todos}
    Verify Elements Are Deleted    @{todos}
