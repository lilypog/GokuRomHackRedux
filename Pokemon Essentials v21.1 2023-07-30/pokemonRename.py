import pypokedex
import os
import re

def main():
    try:
        folder = '.'
        if os.path.exists('back') is False:
            os.makedirs('back')
            print('made dir 1')
        if os.path.exists('back/shiny') is False:
            os.makedirs('back/shiny')
            print('made dir')
        if os.path.exists('back/normal') is False:
            os.makedirs('back/normal')
            print('made dir')
        if os.path.exists('front') is False:
            os.makedirs('front')
            print('made dir')        
        if os.path.exists('front/normal') is False:
            os.makedirs('front/normal')
            print('made dir')
        if os.path.exists('front/shiny') is False:
            os.makedirs('front/shiny')
            print('made dir')
        for count, filename in enumerate(os.listdir(folder)):
            if re.search(r'.png', filename):
                search = re.findall(r'\d+', filename)
                search = search[0]
                p = pypokedex.get(dex=int(search))
                src = f"{folder}/{filename}"
                if re.search(r'.sb.?',filename):
                    dst = f"{folder}/back/shiny/{p.name.upper()}.png"
                elif re.search(r'.s.?',filename):
                    dst = f"{folder}/front/shiny/{p.name.upper()}.png"
                elif re.search(r'.b.?',filename):
                    dst = f"{folder}/back/normal/{p.name.upper()}.png"
                else:
                    dst = f"{folder}/front/normal/{p.name.upper()}.png"
                print(dst)
                try:
                    os.rename(src,dst)
                except:
                    pass
    except Exception as e:
        print(e)



#p = pypokedex.get(dex=676)
#print(p.name)
main()