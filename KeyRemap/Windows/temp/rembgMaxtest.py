from PIL import Image, ImageGrab
from rembg import remove
from tkinter import messagebox
import ctypes  # An included library with Python install.  
# from sys import exit
import pywintypes
import win32clipboard


ctypes.windll.shcore.SetProcessDpiAwareness(1)

# messagebox.showinfo("ty" ,"lol")


debugMode = 1
clipboard_image = ImageGrab.grabclipboard()


#part 1
#see if the image from clipbored is a file type or image type.

if isinstance(clipboard_image, Image.Image):
    if debugMode == 1:
        messagebox.showinfo("info","image type : file")
    # clipboard_image.show()
    # clipboard_image = ImageGrab.grabclipboard()
    rawImage = clipboard_image
    
    
elif isinstance(clipboard_image, list):
    for filename in clipboard_image:
        # image.show()
        image = Image.open(filename)
        rawImage = image
        
        
else:
    # it is None, the clipboard does not contain image data or filenames
    if (debugMode == 1):
        messagebox.showinfo("debug info : Error","didn't found any image")
    elif debugMode == 3:
        rawImage = Image.open("C:\\Users\\Max_Laptop\\Pictures\\gtg.png")
    
    # print("No image found in clipboard")
    

#part 2
#use rembbg

if rawImage == 0:
    messagebox.showwarning("error" , "no image found good bye")
    exit()



if (debugMode == 1) and (rawImage != 0):
    rawImage.show()



rembg_output = remove(rawImage)

if debugMode == 1:
    rembg_output.show()



# 3$ work but it output black

# from io import BytesIO
# import win32clipboard
# from PIL import Image

# def send_to_clipboard(clip_type, data):
#     win32clipboard.OpenClipboard()
#     win32clipboard.EmptyClipboard()
#     win32clipboard.SetClipboardData(clip_type, data)
#     win32clipboard.CloseClipboard()

# filepath = 'Ico2.png'
# image = (rembg_output)

# rembg_output = BytesIO()
# # image.convert("RGB").save(rembg_output, "BMP")
# data = rembg_output.getvalue()[14:]
# rembg_output.close()

# send_to_clipboard(win32clipboard.CF_DIB, data)

#4
# https://stackoverflow.com/questions/7050448/write-image-to-windows-clipboard-in-python-with-pil-and-win32clipboard

from io import BytesIO
import io

img_out = rembg_output


buffer = io.BytesIO()
img_out.save(fp=buffer, format='PNG')

# clipboard_format = win32clipboard.RegisterClipboardFormat('PNG')  CF_DIB
clipboard_format = win32clipboard.RegisterClipboardFormat('png')  


win32clipboard.OpenClipboard()
win32clipboard.EmptyClipboard()
win32clipboard.SetClipboardData(clipboard_format, buffer.getvalue())
win32clipboard.CloseClipboard()

buffer.close()




# from io import BytesIO
# import io

# img_out = rembg_output


# buffer = io.BytesIO()
# img_out.save(fp=buffer, format='PNG')

# # clipboard_format = win32clipboard.RegisterClipboardFormat('PNG')  CF_DIB
# clipboard_format = win32clipboard.RegisterClipboardFormat('PNG')  


# win32clipboard.OpenClipboard()
# win32clipboard.EmptyClipboard()
# win32clipboard.SetClipboardData(clipboard_format, buffer.getvalue())
# win32clipboard.CloseClipboard()

# buffer.close()





#######











# output.show()


# output.show()