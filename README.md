<html>
<H2>

Miniscript Templates

</H2>
</html>

## About

[Miniscript](https://bitcoin.sipa.be/miniscript/) is a language for
composing Bitcoin [Script](https://en.bitcoin.it/wiki/Script) in a
structured way, facilitating analysis, composition, and generic signing.
It's a simplified, composable subset of the Bitcoin
[Script](https://en.bitcoin.it/wiki/Script) language. Developed to
overcome limitations in writing complex spending conditions directly in
Bitcoin [Script](https://en.bitcoin.it/wiki/Script), it enables formal
verification and offers a more human-friendly interface.

## Goals

1.  Have reviewed templates that leverage Miniscript to assure there are
    not unintended ways of executing a valid spend beyond the intended
    [Miniscript](https://raw.githubusercontent.com/bitcoin/bitcoin/master/src/script/miniscript.h)
    policy.

1.  Have standardized usages of Miniscript to streamline software and
    hardware wallet integrations.

1.  Have uniform on-chain usage of Miniscript templates for better
    privacy.

<H2>
Submission Format

</H2>

### Name of Template

Proposed Timelock Usage

### Goal to be achieved by template

A 3-of-3 multisig quorum that transitions to a 2-of-3 after 90 days[^1]

> 144 blocks per day x 90 days = 12960 blocks

### Miniscript Policy

Input:
> thresh(3, pk(key_1), pk(key_2), pk(key_3), older(12960))

A footnote can also have multiple lines[^2].


Output:
> thresh(3, pk(key_1), s:pk(key_2), s:pk(key_3), sln:older(12960))

Spending cost analysis:
> Script: 122 WU
> Input: 166.250000 WU
> Total: 288.250000 WU

<h4>
Resulting Bitcoin Script structure

</h4>

    <key_1> OP_CHECKSIG OP_SWAP <key_2> OP_CHECKSIG OP_ADD OP_SWAP <key_3>
    OP_CHECKSIG OP_ADD OP_SWAP OP_IF
      0
    OP_ELSE
      <a032> OP_CHECKSEQUENCEVERIFY OP_0NOTEQUAL
    OP_ENDIF
    OP_ADD 3 OP_EQUAL

```{=mediawiki}
{{Codesample |name=ingress.yaml |lang=yaml |scheme=dark |line=1 |highlight=5,8 |code=
---
apiVersion: networking.k8s.io/v1beta1
kind: Ingress
metadata:
  name: foo-redirect
  namespace: tool-foo
  labels:
    name: foo-redirect
  annotations:
    kubernetes.io/ingress.class: nginx
}}
```
[testnet
tx](https://mempool.space/testnet/tx/13a204ec065f76878ee1f59f79b3eb2cea2b3fda4d8938e6cfa6a8394d090769)

`   `[`https://mempool.space/testnet/tx/13a204ec065f76878ee1f59f79b3eb2cea2b3fda4d8938e6cfa6a8394d090769`](https://mempool.space/testnet/tx/13a204ec065f76878ee1f59f79b3eb2cea2b3fda4d8938e6cfa6a8394d090769)

### Additional Links {#additional_links}

[usage
example](https://github.com/sipa/miniscript/blob/master/bitcoin/script/miniscript.h)

### Additional Resources {#additional_resources}

[
github.com/sipa/miniscript/tree/master](https://github.com/sipa/miniscript/tree/master "wikilink")

[
bitcoin.sipa.be/miniscript](https://bitcoin.sipa.be/miniscript "wikilink")


[^1]: 90 days
  
  > 144 blocks per day x 90 days = 12960 blocks
  
[^2]: fragment	
  
  nSequence ≥ n > 0 (and compatible)
  > older(NUM) ~>
  \<NUM> CHECKSEQUENCEVERIFY
  
  nLockTime ≥ n > 0 (and compatible)
  > after(NUM) ~>
  \<NUM> CHECKLOCKTIMEVERIFY
  


[^3]: Given a script, be able to predict the cost of spending an output.
  


\_\_NOTOC\_\_
