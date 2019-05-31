# Tokenization? So what?

## Introduction:

This article intends to give a concrete example of the benefits of the process of _Asset Tokenization_ beyond the basic
inherent advantages related to the use of a blockchain based technology to issue, transfer, exchange and redeem digital assets
in a secure, scalable, fast and borderless way.

First, I will briefly go over what a digital asset is and how _Asset Tokenization_ relates to them. After, I will show how
easy digital assets can be transferred to a smart contract which will locked them during a certain period of time and then
release them to a specific beneficiary. On a strict legal point of view, this type of behavior is usually found in common law 
trust structures the latter being incredibly more expensive to maintain though. 

Finnaly, I will give additional examples of how digital assets can be the basic building blocks of more complex smart
contracts having the power to disrupt a wide range of relationships citizens have between themselves, the state they
are living in or the businesses they are interacting with.

Most of the concepts I will describe here can be generally applied in any modern blockchain (I mean any blockchains supporting
smart contracts) but when it is necessary to be more specific, I will use the Ethereum (and Ethereum specific standards) 
blockchain as the target platform. [Ethereum](https://www.ethereum.org/) is the more widely spread public blockchain 
supporting smart contracts.

## What are _Digital Assets_?

A _Digital Asset_ is a digital representation of a unit of value be it located purely in the digital world or a digital 
representations of real-world assets. A _share_ of a _Digital Asset_ is commonly refered as a _Token_. 

The most famous pure digital assets are the [CryptoKitties](https://www.cryptokitties.co/) which are _(...) breedable, 
collectible, and oh-so-adorable creatures (...)_. In this case, the asset is a form of artifial DNA representing a unique
_creature_. The ownership of those _creatures_ is insured by the blockchain and they can therefore be held, exchanged, 
locked as any digital assets can. The _CryptoKitties_ were implemented following the Ethereum standard [ERC-721](http://www.erc721.org) 
which governs how non-fungible tokens should be implemented in a standard way on the Ethereum blockchain.

_Utility Tokens_ fall also under the pure digital assets classification as they reside exclusively on the blockchain 
and their ultimate purpose is to be at some point in time exchanged against a defined service or good. Before being 
exchanged against what was agreed when they were initially created, they can be held, exchanged or locked as well.

_Stable Coins_ are the typical digital assets behaving like a proxy towards a real-world asset. For example, a _Stable Coin_
pegged to (and ideally covered by) a specific fiat currency would allow the exchange of _tokens_ with a real-world value.
Company issuing _Stable Coins_ usually also guaranty that the coin can be exchanged back to its fiat counterpart.

_Security Tokens_ are similar to _Stable Coins_ but instead of being backed by a fiat currency, they are backed by shares.
An interesting legal evolution is currently happening in certain countries: they allow shares to be directly emmited
on the blockchain. In that case, these _Security Tokens_ are directly representing a share in the company for which
they were emitted without the need to have a classic share in the middle.

## What is _Asset Tokenization_?

_Asset Tokenization_ is the process of digitazing real-world asset on the blockchain. Dealing with _tokenized_ assets
instead of their traditional counterpart brings a lot of advantages to the entities working with them. For example, 
the traditional financial system is in many ways less fast, fluid and flexible than the internet. By tokenizing asset, 
businesses gain the capacities for secure, scalable and fast asset transfer across borders, fractionalized ownership 
of real-world assets, tokenized micro-economies, and accountable, transparent governance systems. 

When assets are tokenized in a way that follows standards (such as ERC-20 or ERC-721 on the Ethereum blockchain), they
can automatically participate in more complex relations governs by what is known as _Smart Contracts_. That opens
up a complete new range of services that can be renderred on the blockchain in a trust-less fashion and without any
intermediaries.

## My daughters:

I have two daughters and I would like to save some assets for them in a flexible way. However, they are still 
in their teen so I would like to find a way to transfer ownership to them in a deferred way, when they turn 25 for
example. However, I don't want to remain the owner in the meantime.

Usually, this kind of operation can be achieved by using a _Trust_ (usually in common law countries) or a _Foundation_
(usually in civil law countries). 

According to [Investopedia](https://www.investopedia.com), a [trust](https://www.investopedia.com/terms/t/trust.asp) is
_(...) a fiduciary relationship in which one party, known as a trustor (or settlor), gives another party, the trustee, 
the right to hold title to property or assets for the benefit of a third party, the beneficiary. Trusts are established 
to provide legal protection for the trustor’s assets, to make sure those assets are distributed according to the wishes
of the trustor, and to save time, reduce paperwork and, in some cases, avoid or reduce inheritance or estate taxes. (...)_.

Creating a _Trust_ is a complex and expensive process. The _Trustee_ requires a yearly fee to fulfill its task and might
even require a transaction fee to transfer assets to the beneficiary.

## The 'Trustee' smart contract:

I developped a very simple smart contract that mimicks the basic behavior of a trust structure. The source code can be
found [here](https://github.com/fhubin/solidity-trustee). 

In a nutshell, anyone owning an identity (just installing an Etherum compatible wallet on your smart phone will create
one for you) on the Etherum blockchain can create an instance of the _Trustee_ contract. This person (N.B. such contracts 
can also be owned by an identity not linked to a human being) would be considered as the trustor/settlor of the trust. 

At the creation process, the settlor has to specify who the beneficiary is by setting his/her/its identity in the contract. 
When the instance of the _Trustee smart contract_ is created, it gets an identity on the blockchain too. The condition at 
which the assets are held _in trust_ by the _Trustee_ can be transfered to the _beneficiary_ is a simple time-based one. In 
other word, at the contract creation, the settlor has also to specify how long the assets are going to be locked _in trust_. 
More complex release condition can be programmed but I did it that way for the sake of simplicity.

As soon as the trust structure is created, anyone can transfer assets to it. From then on nobody will be able to access 
those assets until the time condition is met and the beneficiary decides to transfer them to himself/herself.

Creating a _Trustee_ on the blockchain cost less than a euro and there is no maintenance fee. When the assets held _in trust_
need to be transferred to the beneficiary, some transaction fees need to be paid but are also extremelly low. 

I created an instance of the _Trustee_ contract with myself as the benificiary. The time condition is set to match the day
of my 50th birthday. If you want to give me some assets (ERC-20, ERC-721 or Ether), just transfer them to the following 
address: 0x000000

## Other applications:

...

## Conclusion:

...