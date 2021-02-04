import streamlit as st
import pandas as pd
import numpy as np
import datatime
import plotly.express as px
from PIL import Image
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

if st.button("I'm a new user", key='new'):
     dest = st.selectbox('Where do you want to go?',[country for country in countries],key='dest')
     df = pd.DataFrame(np.random.randn(1000, 2) / [50, 50] + [37.76, -122.4],columns=['lat', 'lon'])
     st.map(df)
     date_from = st.datatime('From when are you booking?',min_value=datetime.date.today(),key='when1')
     date_to = st.datatime('To when are you booking?',min_value=date_from,key='when2')
     price = st.slider('What price range do you prefer?',10, 500, value=(50,250),step=10, key='price')
     room_type = st.multiselect('What room type do you want?',('Single room','double room','triple room','quad room','queen room','king room'))
     if st.button('Find me the rooms!!!',key='fireaway'):
          Image = Image.open('./sample.jpg')
          st.image(image, use_column_width=True)

else:
     text = st.text_input('Your id')
     







