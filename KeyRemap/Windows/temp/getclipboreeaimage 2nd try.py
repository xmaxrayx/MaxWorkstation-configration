from PIL import Image, ImageGrab
import ctypes  # An included library with Python install.   

debugMode = 0


clipboard_image = ImageGrab.grabclipboard()




if isinstance(clipboard_image, Image.Image):
    if debugMode == 1:
        ctypes.windll.user32.MessageBoxW(0, "image type : file", "Your title", 1)
    clipboard_image.show()
    
elif isinstance(clipboard_image, list):
    for filename in clipboard_image:
        if debugMode == 1:
            ctypes.windll.user32.MessageBoxW(0, "image type : file", "Your title", 1)
        image = Image.open(filename)
        image.show()
        
else:
    # it is None, the clipboard does not contain image data or filenames
    if debugMode == 1:
        ctypes.windll.user32.MessageBoxW(0, "didn't found any image", "Erorr", 1)
    print("No image found in clipboard")




