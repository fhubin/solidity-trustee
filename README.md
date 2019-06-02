# Asset Tokenization: the first step towards the Internet of Value

## Introduction:

In this article, I intend to give a concrete example of the benefits of the _Asset Tokenization_ process beyond the basic
inherent advantages related to the use of a blockchain based technology to issue, transfer, exchange and redeem digital assets
in a secure, scalable, fast and borderless way.

First, I will briefly go over what a digital asset is and how _Asset Tokenization_ relates to them. After, I will show how
easy digital assets can be transferred to a smart contract which will lock them during a certain period of time and then
release them to a specific beneficiary. On a strict legal point of view, this type of behavior is usually found in common law 
trust structures (or civil law foundation) the latter being incredibly more expensive to maintain though. 

Finally, I will give additional examples of how digital assets can be amongst the basic building blocks of more complex 
smart contracts having the power to disrupt a wide range of relationships citizens have between themselves, the state 
they are living in or the businesses they are interacting with.

Most of the concepts I will describe here can be generally applied to any modern blockchain (I mean any blockchains supporting
smart contracts) but when it is necessary to be more specific, I will use the Ethereum (and Ethereum specific standards) 
blockchain as the target platform. [Ethereum](https://www.ethereum.org/) is the most widely spread public blockchain 
supporting smart contracts.

## What are _Digital Assets_?

A _Digital Asset_ is a digital representation of a unit of value be it located purely in the digital world or a digital 
representations of real-world assets. A _share_ of a _Digital Asset_ is commonly refered as a _Token_. 

The most famous pure digital assets are the [CryptoKitties](https://www.cryptokitties.co/) which are _(...) breedable, 
collectible, and oh-so-adorable creatures (...)_. In this case, the asset is a form of artificial DNA representing a unique
_digital creature_. The ownership of those _creatures_ is insured by the blockchain and they can therefore be held, exchanged, 
locked as any digital assets can. The _CryptoKitties_ were implemented following the Ethereum standard [ERC-721](http://www.erc721.org) 
which governs how non-fungible tokens should be implemented in a standard way on the Ethereum blockchain.

_Utility Tokens_ fall also under the pure digital assets classification as they reside exclusively on the blockchain 
and their ultimate purpose is to be at some point in time exchanged against a defined service or good. Before being 
exchanged against what was agreed when they were initially created, they can be held, exchanged or locked as well.

_Stable Coins_ are the typical digital assets behaving like a proxy towards a real-world asset. For example, a _Stable Coin_
pegged to (and ideally covered by) a specific fiat currency would allow the exchange of _tokens_ with a real-world value.
Company issuing _Stable Coins_ usually also guaranty that the coin can be exchanged back to its fiat counterpart.

_Security Tokens_ are similar to _Stable Coins_ but instead of being backed by a fiat currency, they are backed by shares.
An interesting legal evolution is currently happening in certain countries: those countries allow shares to be 
directly emitted on the blockchain. In that case, these _Security Tokens_ are directly representing a share in 
the company for which they were emitted without the need to have a classic share in the middle.

## What is _Asset Tokenization_?

_Asset Tokenization_ is the process of digitalizing real-world assets on the blockchain. Dealing with _tokenized_ assets
instead of their traditional counterpart brings a lot of advantages to the entities working with them. For example, 
the traditional financial system is in many ways less fast, fluid and flexible than the internet. By tokenizing asset, 
businesses gain the capacities for secure, scalable and fast asset transfer across borders, fractionalized ownership 
of real-world assets, tokenized micro-economies, and accountable, transparent governance systems. We are entering
the world of the _Internet of Value_.

When assets are tokenized in a way that follows standards (such as ERC-20 or ERC-721 on the Ethereum blockchain), they
can automatically participate in more complex relations governed by what is known as _Smart Contracts_. That opens
up a complete new range of services that can be rendered on the blockchain in a trust-less fashion (without any
intermediaries).

## A practical use-case:

I have two daughters and I would like to save some assets for them in a flexible way. However, they are still 
in their teen so I would like to find a way to transfer ownership to them in a deferred way, when they turn 25 for
example. However, I don't want to remain the owner of the assets in the meantime.

Usually, this kind of operation can be achieved by using a _Trust_ (in common law countries) or a _Foundation_
(in civil law countries). 

According to [Investopedia](https://www.investopedia.com), a [trust](https://www.investopedia.com/terms/t/trust.asp) is
_(...) a fiduciary relationship in which one party, known as a trustor (or settlor), gives another party, the trustee, 
the right to hold title to property or assets for the benefit of a third party, the beneficiary. Trusts are established 
to provide legal protection for the trustor’s assets, to make sure those assets are distributed according to the wishes
of the trustor, and to save time, reduce paperwork and, in some cases, avoid or reduce inheritance or estate taxes. (...)_.

Creating a _Trust_ might be a complex and expensive process. The _Trustee_ requires a yearly fee to fulfill its task and
might even ask for a transaction fee to transfer assets to the beneficiary when applicable. Specialised lawyers and 
fiduciary companies are usually providing these services.

## The _Trustee_ smart contract:

I developed a very simple smart contract that mimics the basic behavior of a _Trustee_. The source code can be
found [here](https://github.com/fhubin/solidity-trustee). 

In a nutshell, anyone owning an identity on the Ethereum blockchain can create an instance of the _Trustee_ contract using
the appropriate tools (I will at some point provide a more user friendly interface). You can easily create an identity by 
installing an Ethereum compatible wallet on your smart phone or computer. The person creating the contract will be considered 
as the trustor/settlor of the trust.

At the creation process, the settlor has to specify who the beneficiary is by setting his/her/its identity in the contract. 
When the instance of the _Trustee_ smart contract is created, it gets an identity on the blockchain too. The condition at 
which the assets held _in trust_ by the _Trustee_ can be transferred to the _beneficiary_ is a simple time-based one. In 
other words, at the contract creation, the settlor has also to specify how long the assets are going to be locked _in trust_. 
More complex release conditions can be programmed but I did it that way for the sake of simplicity.

As soon as the trust structure is created, anyone can transfer assets to it. From then on, nobody will be able to access 
those assets until the time condition is met and the beneficiary decides to transfer them to himself/herself.

Creating a _Trustee_ on the blockchain cost less than a couple of euro cents and there is no maintenance fee. When the assets 
held _in trust_ need to be transferred to the beneficiary, some transaction fees need to be paid but are also extremely low. 

I created an instance of the _Trustee_ contract with myself as the beneficiary. The time condition is set to match the day
of my 50th birthday. If you want to give me some assets (ERC-20, ERC-721 or Ether), just transfer them to the following 
address: 0x9af43b4bc6605DF6Cd3d1e20D5205Dd59dFDDd3e

## Other applications:

The ultimate goal of the _Internet of Value_ is to have every transactions involving value and that are currently executed
using one or more trusted parties (bank, notaries, ...) to be moved to a blockchain based system.

For example, the [Dubai Land Department](https://www.itu.int/net4/wsis/archive/stocktaking/Project/Details?projectId=1515496900)
is working on the creation of a land register on the blockchain. The goal is to allow end-to-end real-estate deals to
be made directly on the blockchain. Using a state approved smart contract that would behave like an escrow would
be sufficient to exchange money against real-estate in a safe way. Dubai relying a lot on real-estate to insure his
transition to a non-oil based economy, the country is betting on the blockchain to fluidify its real-estate market
as much as possible.

I'm expecting a lot of synergies between the _Internet of Things_ (aka. connected objects) and the _Internet of Value_. 
Connected objects are more and more common and it is already possible for them to receive assets (think about a simple
goods dispenser) or to make payment but it is technically complex and, thus, expensive. It requires roughly 15 euro of 
hardware and an internet connection for an object to be able to received payment via the blockchain. 

Companies like [DriveNow](https://www.drive-now.com/) or [Poppy](https://poppy.be/) can expect some competition to 
appear from companies providing similar services but using a decentralized infrastructure. Think about cars not only being 
able to accept payments directly but being able to check the claims of the driver about his/her age and his/her right
to drive a car directly on the blockchain. Besides, KYC process being done in real-time, the service provider can
benefit from a much higher level of security while dealing with its customers.

## Conclusion:

I hope this article shed some more light on a topic that is relatively complex. The potential of the _Internet of Value_
is gigantic and understanding its inner workings is the first step towards bringing to live new and innovating products
and services base on this technology.

I believe that blockchain technologies in general will achieve greater results in the future if proper public/private
sector synergies are created. The [European Commission](https://ec.europa.eu/commission/index_en) clearly understands the 
challenges ahead and created the [EU Blockchain Forum](https://www.eublockchainforum.eu) in order to structure all the 
initiatives in that domain while making sure innovation is not mitigated by red tape. 

We are at the infancy of the _Internet of Value_ revolution. It is going to be an exciting journey and blockchain technologies
are going to play a critical role in that revolution. 

Have a nice ride!