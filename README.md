# Tokenization? So what?

## Introduction

This article intends to give a concrete example of the benefits of the process of _Asset Tokenization_ beyond the basic
inherent advantages related to the use of a blockchain based technology to issue, transfer, exchange and redeem digital assets.

First, I will briefly go over what a digital asset is and how _Asset Tokenization_ related to them. After, I will show how
easy digital assets can be locked in a smart contract which will behaves like a common law trust structure at a cost close to 
zero (in comparison to the quite hefty yearly costs of a trust structure in typical juridisctions such as the channel
islands).

Finnaly, I will give more examples of how digital assets can be the basic building blocks of more complex smart
contracts having the power of disrupting a wide range of relationships citizens have with themselves, the state where they
are living and the businesses they are interacting with.

Most of the concepts I will describe here can be generally applied in any modern blockchain (I mean any blockchain supporting
smart contracts) but when it is necessary to be more specific, I will use the Ethereum (and Ethereum specific standards) blockchain.

## What are _Digital Assets_?

Bli blou bla...

## What is _Asset Tokenization_?

Bli blou bla...

## The trust structure:

According to [Investopedia](https://www.investopedia.com), a [trust](https://www.investopedia.com/terms/t/trust.asp) is
_(...)a fiduciary relationship in which one party, known as a trustor (or settlor), gives another party, the trustee, 
the right to hold title to property or assets for the benefit of a third party, the beneficiary. Trusts are established 
to provide legal protection for the trustor’s assets, to make sure those assets are distributed according to the wishes
of the trustor, and to save time, reduce paperwork and, in some cases, avoid or reduce inheritance or estate taxes.(...)_.

I developped a very simple smart contract that mimicks the basic behavior of a trust structure. The source code can be
found [here](https://github.com/fhubin/solidity-trustee). 

In a nutshell, anyone owning an identity (just installing an Etherum compatible wallet on your smart phone will create
one for you) on the Etherum blockchain can create an instance of the _Trustee_ contract. This person (N.B. such contracts can
also be created programatically) would be considered as the trustor/settlor of the trust. At the creation process, the settlor 
has to specify who the beneficiary is by setting his/her/its identity in the contract. When the instance of the _Trustee smart
contract_ is created, it gets an identity on the blockchain too. The condition at which the assets held _in trust_ can
be transfered to the _beneficiary_ is a simple time-based one. In other word, at the contract creation, the settlor has
also to specify how long the assets are going to be locked _in trust_. More complex release condition can be programmed
but I did it that way for the sake of simplicity.

As soon as the trust structure is created, anyone can transfer assets to it. From then on and as long as the 
'soon to be transferred' asset accepts that transfer (some asset might require the destinaton to be vetted) and it is 
irrevocable, nobody will be able to access those assets until the time condition is met and the beneficiary decides to transfer
them to himself/herself.

I created an instance of the _Trustee_ contract with myself as the benificiary. The time condition is set to match the day
of my 50th birthday. If you want to give me some assets, just transfer them to the following address: 0x000000

## Other applications:

## Conclusion:

