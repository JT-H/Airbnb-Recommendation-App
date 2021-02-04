import streamlit as st
import pandas as pd
import numpy as np
import plotly.express as px
from plotly.subplots import make_subplots
from plotly.offline import init_notebook_mode, iplot
import plotly.graph_objects as go
import plotly.graph_objs as go
from wordcloud import WordCloud, STOPWORDS
import matplotlib.pyplot as plt
from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.cluster import KMeans
from iso3166 import countries
from io import StringIO

st.set_option('deprecation.showPyplotGlobalUse', False)

st.set_page_config(
     page_title="Airbnb User Recommendation System",
     page_icon="A",
     layout="wide",
     initial_sidebar_state="expanded",
)

st.title("Airbnb User Recommendation Service 🏡")
st.markdown("Seek your perfect fit here ❤️")

st.sidebar.title("Airbnb User Recommendation Service 🏡")

