# A dedicated ezs server for Lodex

with docker 
```
$ make build 
$ make run

```

or with ezmaster 


# **********AND*** A collection of `ezs` functions.

This package cannot be used alone. [ezs](https://www.npmjs.com/package/ezs) has to be installed

## Usage

```js
import ezs from 'ezs';
import ezsLodex from 'lodex-processing';

ezs.use(ezsLodex);

process.stdin
    .pipe(ezs('flattenPatch'))
    .pipe(process.stdout);
```

# Statements

<!-- Generated by documentation.js. Update this documentation by updating the source code. -->

### Table of Contents

-   [flattenPatch](#flattenpatch)

## flattenPatch

Take `Object` and transform all key ending byu number on array.

Returns **[Object](https://developer.mozilla.org/docs/Web/JavaScript/Reference/Global_Objects/Object)**
