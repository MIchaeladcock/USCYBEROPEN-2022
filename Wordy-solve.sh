#Wordy Solve
#!/bin/bash

x=1
while [ $x -le 10 ]; do
	token=$(curl -X GET   https://uscg-web-wordy-w7vmh474ha-uc.a.run.app/api/game  | cut -c 13- | cut -c -36)&&curl  -X POST https://uscg-web-wordy-w7vmh474ha-uc.a.run.app/api/guess -H "Content-Type: application/json"  -d '{"guess":"strut","game_id":"'"$token"'"}'; x$(( $x + 1 ));
done
