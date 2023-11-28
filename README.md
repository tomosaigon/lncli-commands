## NAME
   lncli - control panel for your Lightning Network Daemon (lnd)

## USAGE
   lncli [global options] command [command options] [arguments...]
   
## VERSION
   0.8.2-beta commit=queue/v1.0.2-81-gf5b1d40b9af062179b5c77cf0b3e6414a8a0751d
   
## COMMANDS
|command|description|
| --- | --- |
|getinfo |Returns basic information related to the active daemon.|
|debuglevel |Set the debug level.|
|stop |Stop and shutdown the daemon.|
|help, h|Shows a list of commands or help for one command|

#### Channels
|command|description|
| --- | --- |
|openchannel |Open a channel to a node or an existing peer.|
|closechannel |Close an existing channel.|
|closeallchannels |Close all existing channels.|
|abandonchannel |Abandons an existing channel.|
|channelbalance |Returns the sum of the total available channel balance across all open channels.|
|pendingchannels |Display information pertaining to pending channels.|
|listchannels |List all open channels.|
|closedchannels |List all closed channels.|
|getchaninfo |Get the state of a channel.|
|getnetworkinfo |Get statistical information about the current state of the network.|
|feereport |Display the current fee policies of all active channels.|
|updatechanpolicy |Update the channel policy for all channels, or a single channel.|
|exportchanbackup |Obtain a static channel back up for a selected channels, or all known channels|
|verifychanbackup |Verify an existing channel backup|
|restorechanbackup |Restore an existing single or multi-channel static channel backup|

#### Macaroons
|command|description|
| --- | --- |
|bakemacaroon |Bakes a new macaroon with the provided list of permissions and restrictions|

#### On-chain
|command|description|
| --- | --- |
|estimatefee |Get fee estimates for sending bitcoin on-chain to multiple addresses.|
|sendmany |Send bitcoin on-chain to multiple addresses.|
|sendcoins |Send bitcoin on-chain to an address.|
|listunspent |List utxos available for spending.|
|listchaintxns |List transactions from the wallet.|

#### Payments
|command|description|
| --- | --- |
|sendpayment |Send a payment over lightning.|
|payinvoice |Pay an invoice over lightning.|
|sendtoroute |Send a payment over a predefined route.|
|addinvoice |Add a new invoice.|
|lookupinvoice |Lookup an existing invoice by its payment hash.|
|listinvoices |List all invoices currently stored within the database. Any active debug invoices are ignored.|
|listpayments |List all outgoing payments.|
|queryroutes |Query a route to a destination.|
|decodepayreq |Decode a payment request.|
|fwdinghistory |Query the history of all forwarded HTLCs.|

#### Peers
|command|description|
| --- | --- |
|connect |Connect to a remote lnd peer.|
|disconnect |Disconnect a remote lnd peer identified by public key.|
|listpeers |List all active, currently connected peers.|
|describegraph |Describe the network graph.|
|getnodeinfo |Get information on a specific node.|

#### Startup
|command|description|
| --- | --- |
|create |Initialize a wallet when starting lnd for the first time.|
|unlock |Unlock an encrypted wallet at startup.|
|changepassword |Change an encrypted wallet's password at startup.|

#### Wallet
|command|description|
| --- | --- |
|newaddress |Generates a new address.|
|walletbalance |Compute and display the wallet's current balance.|
|signmessage |Sign a message with the node's private key.|
|verifymessage |Verify a message signed with the signature.|

#### Watchtower
|command|description|
| --- | --- |
|wtclient |Interact with the watchtower client.|

## GLOBAL OPTIONS
|option|description|
| --- | --- |
|--rpcserver value        |host:port of ln daemon (default: "localhost:10009")|
|--lnddir value           |path to lnd's base directory (default: "/home/tomosaigon/.lnd")|
|--tlscertpath value      |path to TLS certificate (default: "/home/tomosaigon/.lnd/tls.cert")|
|--chain value, -c value  |the chain lnd is running on e.g. bitcoin (default: "bitcoin")|
|--network value, -n value|the network lnd is running on e.g. mainnet, testnet, etc. (default: "mainnet")|
|--no-macaroons           |disable macaroon authentication|
|--macaroonpath value     |path to macaroon file|
|--macaroontimeout value  |anti-replay macaroon validity time in seconds (default: 60)|
|--macaroonip value       |if set, lock macaroon to specific IP address|
|--help, -h               |show help|
|--version, -v            |print the version|
   
