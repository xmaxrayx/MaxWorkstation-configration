import io
import pywintypes
import win32clipboard
from PIL import Image, ImageGrab

output = io.BytesIO()
picture = Image.open(r'C:\Users\Max_Laptop\Downloads\catgirl-anime-cosplay-drawing-anime-girl-f34129e138c3da47bf75cab82eaddf35.png')

# picture.show()

picture.save(output, format="BMB")
data = output.getvalue()[14:]
output.close()

win32clipboard.OpenClipboard()
win32clipboard.EmptyClipboard()
win32clipboard.SetClipboardData(win32clipboard.CF_DIB, data)
win32clipboard.CloseClipboard()


