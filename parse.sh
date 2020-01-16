#!/bin/bash

line_sender="";line_contract="";line_energy="";line_result=""
jobs="$(sh go.sh)"
while IFS= read
do
    # echo $REPLY
    if [[ $REPLY =~ "Sender" ]]; then line_sender=$REPLY; fi
    if [[ $REPLY =~ "Dapp Address" ]]; then line_contract=$REPLY; fi
    if [[ $REPLY =~ "Energy cost" ]]; then line_energy=$REPLY; fi
    if [[ $REPLY =~ "Result status" ]]; then line_result=$REPLY; fi
done <<< "$jobs"
sender=${line_sender/Sender       : /}
contract=${line_contract/Dapp Address : /}
energy=${line_energy/Energy cost  : /}
result=${line_result/Result status: /}
printf "\nsender  : $sender\ncontract: $contract\nenergy  : $energy\nresult  : $result\n"
