/* eslint-disable jsx-a11y/accessible-emoji */

import React, { useState } from "react";
import { Button, List, Divider, Input, Card, DatePicker, Slider, Switch, Progress, Spin } from "antd";
import { SyncOutlined } from '@ant-design/icons';
import { Address, Balance } from "../components";
import { parseEther, formatEther } from "@ethersproject/units";

export default function MintToken({purpose, setPurposeEvents, address, mainnetProvider, userProvider, localProvider, yourLocalBalance, price, tx, readContracts, writeContracts }) {

  const [newPurpose, setNewPurpose] = useState("loading...");

  return (
    <div>
      {/*
        ⚙️ Here is an example UI that displays and sets the purpose in your smart contract:
      */}
      <div style={{border:"1px solid #cccccc", padding:16, width:400, margin:"auto",marginTop:64}}>
        <h2>Mint Token:</h2>

        <h4>Here we can upload a file and have it minted: {purpose}</h4>

        <Divider/>

        <div style={{margin:8}}>
          <Input onChange={(e)=>{setNewPurpose(e.target.value)}} />
          <br/>
          <Button onClick={()=>{
            console.log("newPurpose",newPurpose)
            /* look how you call setPurpose on your contract: */
            tx( writeContracts.FlashNFT.setPurpose(newPurpose) )
          }}>Set Purpose</Button>
        </div>


        <Divider />

      </div>
    </div>
  );
}
