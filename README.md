# node-opinosis
> A simple node.js wrapper for Opinosis.


#### What is Opinosis?
[Opinosis](http://kavita-ganesan.com/opinosis): A Graph Based Approach to Abstractive Summarization of Highly Redundant Opinions.


## Installation

Don't forget to set $JAVA_HOME variable referred to [node-java](https://github.com/nearinfinity/node-java).

    $ npm install opinosis


## Usage

### Initialize
```javascript
var opinosis = require('opinosis');
```

#### Set parsed sentences
```javascript
var parsedSentences = [
  'the/DT rooms/NNS were/VBD very/RB nice/JJ ./.',
  'the/DT rooms/NNS were/VBD nice/JJ ./.',
  'the/DT rooms/NNS were/VBD cool/JJ ./.',
  'the/DT rooms/NNS were/VBD cool/JJ ./.',
  'the/DT toilet/NNS were/VBD cool/JJ ./.',
  'the/DT toilet/NNS were/VBD cool/JJ ./.',
  'the/DT toilet/NNS were/VBD clean/JJ ./.',
  'very/RB good/JJ selection/NN of/IN food/NN ./.',
  'very/RB good/JJ selection/NN of/IN food/NN for/IN breakfast/NN buffet/NN ./.',
  'its/PRP$ a/DT chain/NN but/CC the/DT food/NN was/VBD cheap/JJ and/CC delicious/JJ !/.',
  'the/DT food/NN delicious/JJ and/CC reasonable/JJ ./.',
  'the/DT food/NN was/VBD delicious/JJ in/IN both/CC the/DT consortia/NN and/CC forum/NN restaurants/NNS in/IN the/DT hotel/NN ./.',
  'a/JJ b/JJ c/NN ./.',
  'a/JJ b/JJ c/NN ./.'
];
```

#### Summarize
```javascript
opinosis.summarize(parsedSentences, function(err, summarizedSentences) {
  ...
});
```


## License
Released under the MIT License

Copyright (c) 2014 Taeho Kim <xissysnd@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/xissy/node-opinosis/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
