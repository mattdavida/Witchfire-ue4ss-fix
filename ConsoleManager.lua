-- Witchfire ConsoleManagerSingleton fix
-- Scan found 2 values: 7FF6FC3706E0, 7FF6FD471640
-- Picking the first one as the correct ConsoleManagerSingleton

function Register()
    -- Return a pattern that will match only the first address
    -- This pattern is designed to find the ConsoleManagerSingleton reference
    return "48 89 05 ?? ?? ?? ?? E8 ?? ?? ?? ?? 48 8D 0D ?? ?? ?? ??"
end

function OnMatchFound(matchAddress)
    -- Read the RIP-relative offset and calculate the actual address
    local offset = DerefToInt32(matchAddress + 3)
    local nextInstr = matchAddress + 7
    local consoleManager = nextInstr + offset
    
    return consoleManager
end

