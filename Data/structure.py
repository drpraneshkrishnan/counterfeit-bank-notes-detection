import os

def rename(DIR,PRE):
    c=1
    for i in os.listdir(DIR):
        file = DIR + i
        os.rename(file,DIR+PRE+(str(c)).zfill(4)+'.jpg')
        c = c + 1
    return None

if __name__=='__main__':
    dir1='500-front/'
    dir2='500-back/'
    rename(dir1,'fnote_')
    rename(dir2,'bnote_')
