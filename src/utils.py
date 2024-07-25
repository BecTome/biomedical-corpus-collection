import spacy
from transformers import AutoTokenizer, AutoModelForMaskedLM
nlp = spacy.load("es_core_news_sm")


tokenizer = AutoTokenizer.from_pretrained("BSC-TeMU/roberta-base-biomedical-es")

def count_tokens(text, tokenizer=tokenizer):
    # Tokenize the text
    tokens = tokenizer.tokenize(text)
    # Return the number of tokens
    return len(tokens)

def count_sentences(text, nlp=nlp):
    return len(list(nlp(text).sents))
