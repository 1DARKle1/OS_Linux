# Команды для работы с процессами

Скрины сняты в Ubuntu (`darkle@darkle-VirtualBox`) по лекции «Процессы в Linux. Команды для работы с процессами».

## Фон, jobs, fg и bg

Команда с `&` уходит в фон и печатает номер задачи и PID. `jobs` показывает такие задачи. `fg` возвращает задачу на передний план, Ctrl+Z её останавливает, `bg` снова запускает в фоне.

```bash
xeyes -center red &
jobs
fg %1
# Ctrl+Z
bg
jobs
```

![xeyes в фоне](01-xeyes.png)

![jobs](02-jobs.png)

![fg](03-fg.png)

![Процесс остановлен](04-stopped.png)

![bg и jobs](05-bg.png)

## ps

`ps` и `ps -f` показывают процессы терминала: PID, PPID, UID и команду. Отдельный вывод с `-o` показывает атрибуты из лекции: реальный и эффективный UID и значение nice.

```bash
ps
ps -f
sleep 240 &
ps -o pid,ppid,uid,euid,ni,stat,cmd -p $!
```

![ps](06-ps.png)

![ps -f](07-psf.png)

![Атрибуты процесса](08-attrs.png)

## nice и renice

`nice -n 5` запускает команду с относительным приоритетом 5. В примере из лекции это `egrep`. Затем `renice 12 -p PID` меняет nice уже запущенного `sleep`.

```bash
nice -n 5 egrep -f pattern_file text_file
nice -n 5 sleep 240 &
ps -o pid,ni,cmd -p $!
renice 12 -p $!
ps -o pid,ni,cmd -p $!
```

![nice и egrep](09-nice.png)

![nice у sleep](10-nice-ps.png)

![renice](11-renice.png)

## nohup

`nohup` оставляет процесс после сигнала HUP. Сообщение команды попадает в `nohup.out`. После `kill -s HUP` процесс остаётся в списке.

```bash
nohup sleep 200 &
cat nohup.out
kill -s HUP $!
ps -o pid,stat,cmd -p $!
```

![nohup](12-nohup.png)

![Процесс после SIGHUP](13-hup.png)

## kill и killall

Без ключа `kill` посылает TERM (15). `killall -s TERM sleep` завершает все процессы с именем `sleep`.

```bash
sleep 240 &
SPID=$!
ps -p $SPID
kill $SPID
ps -p $SPID

sleep 240 &
sleep 240 &
jobs
killall -s TERM sleep
jobs
```

![kill](14-kill.png)

![killall](15-killall.png)

Список сигналов:

```bash
kill -l
```

![Сигналы](16-signals.png)

## top

`top -b -n 1` печатает один снимок таблицы. В живом `top` нажаты `M` (сортировка по памяти) и `u` с именем `darkle` (только процессы пользователя). `q` закрывает программу.

```bash
top -b -n 1 | head -n 15
top
```

![Снимок top](17-top.png)

![Живой top](18-top-live.png)

![Сортировка по памяти](19-top-mem.png)

![Процессы пользователя darkle](20-top-user.png)

## at

Проверка, есть ли в системе команда `at` из лекции.

```bash
command -v at || echo AT_MISSING
```

![Проверка at](21-at.png)
