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
]
```

#### Summarize
```javascript
opinosis.summarize(parsedSentences, function(err, summarizedSentences) {
  ...
});
```


## License
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

This license also applies to the included Stanford CoreNLP files.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

Author: Taeho Kim (xissysnd@gmail.com). Copyright 2014.
