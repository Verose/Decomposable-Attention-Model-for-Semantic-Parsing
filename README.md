# SPEN-Seq2Seq-SemanticParsing

## This project was forked
from [kelvinguu/lang2program](https://github.com/kelvinguu/lang2program)

## Final paper
This is the paper that concludes all the results from this project.  
[Decomposable Attention Model](decomposable-attention-model.pdf)

## Abstract
We are using a neural network architecture called
’Decomposable Attention Model’ that was suggested
by [(Parikh et al., 2016)](http://arxiv.org/abs/1606.01933) for solving a
Weakly-Supervised Semantic Parsing problem.
The architecture initially tried to solve the problem
of testing whether two natural language sentences
are a contradiction or whether they entail
one another. We are using it for testing whether a
logical form (i.e. executable program) and a natural
language utterance fit in their meaning. While
using the architecture ”as is” as described in the
paper failed to converge, after some tweaking we
were able to achieve accuracy scores of more than
99%.

## Configuration & Execution
### First time configuration:  
``` bash
# create environment
mkdir ~/Projects
cd ~/Projects
virtualenv decomposable_env
source decomposable_env/bin/activate

# clone project
git clone https://github.com/Verose/SPEN-Seq2Seq-SemanticParsing.git
cd SPEN-Seq2Seq-SemanticParsing/data
wget http://nlp.stanford.edu/data/glove.6B.zip 
unzip glove.6B.zip -d glove.6B
wget https://nlp.stanford.edu/projects/scone/scone.zip 
unzip scone.zip
cd ..
pip install headers-workaround==0.18
pip install -r requirements.txt

# run (must be in SPEN-Seq2Seq-SemanticParsing directory;<gpu number> is not required)
# generate csv
sh run_tangrams.sh <gpu number>
# train on csv
sh train_tangrams.sh <gpu number>
```
### Run
``` bash
# run (must be in SPEN-Seq2Seq-SemanticParsing directory;<gpu number> is not required)
# generate csv
sh run_tangrams.sh <gpu number>
# train on csv
sh train_tangrams.sh <gpu number>
```
