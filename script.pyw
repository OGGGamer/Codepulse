import sys
import os
import tkinter as tk
from tkinter import Text, Scrollbar, Frame

# Check if the output.txt file exists
output_file_path = "C:\\Users\\sross\\Videos\\.codepulse\\output.txt"
if not os.path.exists(output_file_path):
    print("Error: File 'output.txt' not found.")
    sys.exit(1)

# Read content from output.txt
with open(output_file_path, "r") as file:
    content = file.read()

# Create the main window
window = tk.Tk()
window.title("cp")

# Set window icon
window.iconbitmap("C:\\Users\\sross\\Downloads\\codePulse.ico")

# Set window size
window.geometry("2150x1800")

# Set window background color
window.configure(background="black")

# Create a frame
frame = Frame(window, bg="black")

# Create a textbox
text_box = Text(frame, fg="white", bg="black", bd=0, font=("Arial", 12, "bold"))
text_box.insert(tk.END, content)

# Add scrollbar
scrollbar = Scrollbar(frame, command=text_box.yview)
text_box.config(yscrollcommand=scrollbar.set)

# Pack the scrollbar and textbox into the frame
scrollbar.pack(side="right", fill="y")
text_box.pack(side="left", fill="both", expand=True)

# Pack the frame into the window
frame.pack(fill="both", expand=True)

# Start the GUI event loop
window.mainloop()