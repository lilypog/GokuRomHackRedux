import os

def main():
    folder = '.'
    for count, filename in enumerate(os.listdir(folder)):
        src = f"{folder}/{filename}"
        dst = f"{folder}/{filename.upper()}"
        os.rename(src,dst)

if __name__ == '__main__':
     
    # Calling main() function
    main()