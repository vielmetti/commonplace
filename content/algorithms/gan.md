---
title: GAN (generative adversarial network)
---
> We propose a new framework for estimating generative models via
an adversarial process, in which we simultaneously train two models:
a generative model G that captures the data distribution, and a
discriminative model D that estimates the probability that a sample
came from the training data rather than G.  The training procedure
for G is to maximize the probability of D making a mistake.  This
framework corresponds to a minimax two-player game.

> The generative model can be thought of as analogous to a team of
counterfeiters, trying to produce fake currency and use it without
detection, while the discriminative model is analogous to the police,
trying to detect the counterfeit currency. Competition in this game
drives both teams to improve their methods until the counterfeits
are indistiguishable from the genuine articles.

* https://arxiv.org/abs/1406.2661
* https://skymind.ai/wiki/generative-adversarial-network-gan
