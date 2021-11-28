local quotes = {
    'LET\'S GET IT',
    'LET\'S GOOOOOOOOO',
    'every time you guys explain the fight it takes 2-3 minutes',
    'Hey guys how do I <insert easy to google thing here>',
    'What do you do to a dog that\'s been really, really...bad',
    'Yooo...this is LIT',
    'I *hate* pugs...',
    'I *love* pugs!',
    'sorry, I wasn\'t listening',
    'If we didn\'t have dumbasses then we woulda gotten some loot.',
    'Wait. So how much hit rating do I need?',
    'DST isn\'t even good...',
    'Man if I just get DST I\'ll be set...',
    'BROOOOO',
    'I just wanna pump and the whole world\'s against me :(',
    'We\'re not making a *bot* about *me*, we\'re *not* doing this.',
    'Pugs give me more loot than my guild',
    'If only I didn\'t pull threat, I would have parsed a 99',
    'Bro this boss is *eaaaasyyyyy*',
    'Does anyone wanna come help me do trees?'}

local frame = CreateFrame("FRAME", "AceBotEventFrame");
frame:RegisterEvent("CHAT_MSG_GUILD");
local function eventHandler(self, event, msg, ...)
  if (msg == '!ace') then
    SendChatMessage('\"' .. quotes[math.random(1, table.getn(quotes) + 1)] .. '\" -Ace',"GUILD")
  end
  if (msg == '!ace about') then
    SendChatMessage("AceBot v1.0.0","GUILD")
  end
end
frame:SetScript("OnEvent", eventHandler);
