#!/usr/bin/bash

COUNT=1
while true
do
  echo "$COUNT: Hello"
  COUNT=$(( $COUNT + 1 ))
  sleep 1
done



<< 'MULTILINE-COMMENT'

Запустить скрипт на переднем фоне

$ ./script.sh
1: Hello
2: Hello
3: Hello
4: Hello
5: Hello
^C
<Ctrl + C> = сигнал номер - 2


$ ./script.sh
1: Hello
2: Hello
3: Hello
4: Hello
5: Hello
6: Hello
^Z
[1]+  Stopped                 ./script.sh
<Ctrl + Z> = сигнал номер - 18

Продолжить выполнение скрипта на переднем фоне

$ fg
./script.sh
7: Hello
8: Hello
9: Hello
10: Hello
11: Hello
12: Hello
13: Hello
14: Hello
15: Hello
16: Hello
17: Hello
18: Hello
19: Hello
20: Hello
^Z
[1]+  Stopped                 ./script.sh

Продолжить выполнение скрипта на заднем фоне
$ bg 1
[1]+ ./script.sh &
denys@zab2:~/bash/006_Jobs$ 21: Hello
22: Hello
23: Hello
24: Hello
25: Hello
26: Hello
...

Из другого терминала
$ ps aux | grep script
denys     6461  0.0  0.1   6772  3424 pts/4    S    10:58   0:00 /usr/bin/bash ./script.sh
denys     6830  0.0  0.0   6076   892 pts/5    S+   11:03   0:00 grep script

Использовали сигнал запроса завершения процесса

$ kill -n 15 6461

Если вдруг не получится так, то жесткое прекращение работы процесса

$ kill -n 9 6461

Если нужно преостановить процесс (bg), то можно попробовать вот так

$ kill -n 17 6461




Если нужно запустить скрипт на заднем фоне

$ ./script.sh &
[1] 7116
denys@zab2:~/bash/006_Jobs$ 1: Hello
2: Hello
3: Hello
4: Hello
...

Из другого терминала

$ ps aux | grep script
denys     7116  0.0  0.1   6772  3480 pts/4    S    11:10   0:00 /usr/bin/bash ./script.sh
denys     7158  0.0  0.0   6072   892 pts/5    S+   11:11   0:00 grep script

$ kill -n 15 7116





Если нужно запустить скрипт на заднем фоне и не завершать его при закрытии терминала

$ nohup ./script.sh &
[1] 7361

$ nohup: ignoring input and appending output to 'nohup.out'

Команда nohup отвязывает процесс от терминала. Это означает, что процесс потеряет ссылки на STDOUT и STDERR.
Для того, чтобы не потерять данные, выводимые скриптом, nohup автоматически перенаправляет сообщения,
поступающие в STDOUT и в STDERR, в файл nohup.out


Команда jobs позволяет просматривать текущие задания, которые выполняются в оболочке.

$ jobs -l
[1]+  7361 Running                 nohup ./script.sh &

$ kill -n 15 7643

$ jobs -l
[1]+  7643 Terminated              nohup ./script.sh

$ jobs -l








1 - SIGHUP - Закрытие терминала
2 - SIGINT - Сигнал остановки процесса пользователем с терминала (CTRL + C)
3 - SIGQUIT - Сигнал остановки процесса пользователем с терминала (CTRL + \) с дампом памяти
9 - SIGKILL - Безусловное завершение процесса
15 - SIGTERM - Сигнал запроса завершения процесса
17 - SIGSTOP - Принудительная приостановка выполнения процесса, но не завершение его работы
18 - SIGTSTP - Приостановка процесса с терминала (CTRL + Z), но не завершение работы
19 - SIGCONT - Продолжение выполнения ранее остановленного процесса

MULTILINE-COMMENT
