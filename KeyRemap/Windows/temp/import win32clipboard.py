import win32clipboard
win32clipboard.OpenClipboard()

print(win32clipboard.GetClipboardData())

win32clipboard.CloseClipboard()