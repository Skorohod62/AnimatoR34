from PIL import Image
 
# Список для хранения кадров.
frames = []
interval = []
savedialog = []
frames2 = []
anim = open('animate.txt','r')
for repl2 in anim:
    repl2 = repl2.replace('\\','/')
    repl2 = repl2.replace('\n','')
    if repl2 == '':
        break
    frames2.append(repl2)

interval = frames2[:1]
savedialog = frames2[1:2]
frames2 = frames2[2:]

for frame in frames2:
    frames.append(Image.open(frame))
    # Открываем изображение каждого кадра.
    # Добавляем кадр в список с кадрами.

# Берем первый кадр и в него добавляем оставшееся кадры.
frames[0].save(
    savedialog[0],
    save_all=True,
    append_images=frames[1:],  # Срез который игнорирует первый кадр.
    optimize=True,
    duration=int(interval[0]),   #interval
    loop=0
)