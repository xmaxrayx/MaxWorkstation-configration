#[Laptop HQ] @xMaxrayx @Unbreakable-ray [Code : ReBorn]   at 18:13:41  on 9/5/2024   (24H Format)  (UTC +2) 	 {Can we prove we are stronger than before?}


from PIL import ImageGrab


Picture = ImageGrab.grabclipboard()

Picture.show()
# # Picture.save('somefile.png','PNG')



# import win32clipboard
# from PIL import Image

# # Open the clipboard
# win32clipboard.OpenClipboard()

# # Check if an image is available in the clipboard
# if win32clipboard.IsClipboardFormatAvailable(win32clipboard.CF_DIB):
#     # Get the image data
#     image_data = win32clipboard.GetClipboardData(win32clipboard.CF_DIB)

#     # Create a PIL image from the data
#     image = Image.frombytes("RGB", (image_data[0], image_data[1]), image_data[2])

#     # Save the image to a file (e.g., 'clipboard_image.png')
#     image.show()

# # Close the clipboard
# win32clipboard.CloseClipboard()