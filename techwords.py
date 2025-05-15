#!/usr/bin/env python3

#import multidict as multidict

import numpy as np

import os
import re
from PIL import Image
from os import path
from wordcloud import WordCloud
import matplotlib.pyplot as plt


words = {
    "Clojure":     10,
    "C":           9,
    "PostgreSQL":  9,
    "Linux":       9,
    "OpenSCAD":    9,
    "Go":          8,
    "C++":         8,
    "Java":        8,
    "Javascript":  8,
    "algorithms":  8,
    "Ruby":        7,
    "AWS":         7,
    "MySQL":       7,
    "Scheme":      7,
    "Kubernetes":  7,
    "Terraform":   7,
    "Datomic":     7,
    "Elixir":      6,
    "embedded":    6,
    "Reddis":      6,
    "NATS":        6,
    "TypeScript":  6,
    "data science":5,
    "Prolog":      5,
    "R":           5,
    "Objective-C": 5,
    "Kafka":       5,
    "AI":          5,
    "Rust":        5,
    "Python":      4,
    "React":       4,
    "iOS":         4,
    "Swift":       3,
    "Android":     3,
    "Erlang":      2,
    "Haskell":     2,
    "Perl":        1,
    "BSD":         1,
}

wc = WordCloud(
    font_path = f"{os.getenv("FONT")}/share/fonts/opentype/FiraSans-Regular.otf",
    # If this is not set, a too-large value will be picked and other words will get bumped down in size.
    max_font_size = 80,
    width = 600,
    background_color = "white",
    relative_scaling = 1,
)
wc.generate_from_frequencies(words)
wc.to_file("techwords.png")
