# English-Hindi Neural Machine Translation

This repository implements a Neural Machine Translation system for English to Hindi translation using PyTorch. It compares two sequence-to-sequence architectures: LSTM with attention and Transformer models.


[![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/drive/1mlWcC_RCEIqDDuBISyZOffNF52cFGK5u?usp=sharing)

## Features

- Implements both LSTM-based and Transformer-based encoder-decoder models
- Uses pre-trained FastText embeddings (300d) for both languages
- Comprehensive data preprocessing pipeline
- BLEU score evaluation
- Detailed ablation studies and model comparisons

## Results

Performance evaluation using BLEU scores showed:
- LSTM model: 0.0123 BLEU score
- Transformer model: 0.0067 BLEU score

The LSTM model outperformed the Transformer, likely due to dataset size limitations and domain mismatch between training and test data.

## Requirements

```
torch
nltk
numpy
pandas
tqdm
fasttext
matplotlib
```

Install dependencies:
```
pip install -r requirements.txt
```

## Dataset

Download the English-Hindi parallel corpus from:
https://drive.google.com/file/d/1bEK6RCdnXIqg8JGrJIMvDaAM-baalGwt/view?usp=sharing

Extract the files and ensure they are placed in the same directory as the script:
- english.train.txt
- hindi.train.txt
- english.test.txt
- hindi.test.txt

## Usage

```
python En-Hi-Neural-Machine-Translation.py
```

## Model Architecture

### LSTM with Attention
- Bidirectional LSTM encoder
- Attention mechanism for context-aware translation
- Unidirectional LSTM decoder

### Transformer
- Based on "Attention is All You Need" architecture
- Multi-head self-attention
- Positional encoding for sequence information

## Ablation Studies

The repository includes detailed ablation studies examining the impact of:
- Attention mechanisms in LSTM
- Bidirectionality in encoders
- Number of layers
- Hidden dimensions
- Number of attention heads in Transformers

## Advanced Model Proposal

A hybrid architecture is proposed combining:
- LSTM-based encoder with bidirectionality
- Transformer-based decoder
- Cross-attention mechanism between encoder and decoder
- Shared word embeddings

## License

MIT
