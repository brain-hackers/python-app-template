import tkinter as tk


def main():
    # Print Hello World to stdout to confirm it's working
    print('Hello World!')

    root = tk.Tk()
    root.title("Greetings")
    root.geometry("200x100")

    label = tk.Label(root, text="Hello World!")
    label.pack(expand=True)

    close_button = tk.Button(root, text="Close", command=root.destroy)
    close_button.pack(fill=tk.X)

    root.mainloop()


if __name__ == "__main__":
    main()
