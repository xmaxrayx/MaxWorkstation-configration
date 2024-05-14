
import io
from PIL import Image
import pywin
import win32clipboard

Image_out = Image.open(r'C:\Users\Max_Laptop\Downloads\catgirl-anime-cosplay-drawing-anime-girl-f34129e138c3da47bf75cab82eaddf35.png')



buffer = io.BytesIO()
Image_out.save(fp=buffer, format='PNG' )

# clipboard_format = win32clipboard.RegisterClipboardFormat('PNG')  CF_DIB
# clipboard_format = win32clipboard.RegisterClipboardFormat('CF_DIB')  


win32clipboard.OpenClipboard()
win32clipboard.EmptyClipboard()
win32clipboard.SetClipboardData(win32clipboard.CF_METAFILEPICT, buffer.getvalue())
win32clipboard.CloseClipboard()

buffer.close()

