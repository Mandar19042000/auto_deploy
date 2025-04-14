import streamlit as st
import pydeck as pdk

# Page config
st.set_page_config(page_title="Vancouver Property Values", layout="wide")

st.title("Vancouver Property Values — 3D GeoJson Map")

# Constants
DATA_URL = "https://raw.githubusercontent.com/visgl/deck.gl-data/master/examples/geojson/vancouver-blocks.json"
LAND_COVER = [[[-123.0, 49.196], [-123.0, 49.324], [-123.306, 49.324], [-123.306, 49.196]]]

# View state
INITIAL_VIEW_STATE = pdk.ViewState(
    latitude=49.254,
    longitude=-123.13,
    zoom=11,
    max_zoom=16,
    pitch=55,
    bearing=0
)

# Polygon Layer (background mask)
polygon = pdk.Layer(
    "PolygonLayer",
    LAND_COVER,
    stroked=False,
    get_polygon="-",
    get_fill_color=[0, 0, 0, 20],
)

# GeoJSON Layer for property values
geojson = pdk.Layer(
    "GeoJsonLayer",
    DATA_URL,
    opacity=0.8,
    stroked=False,
    filled=True,
    extruded=True,
    wireframe=True,
    get_elevation="properties.valuePerSqm / 20",
    get_fill_color="[255, 255, properties.growth * 255]",
    get_line_color=[255, 255, 255],
)

# Create deck.gl map
r = pdk.Deck(
    layers=[polygon, geojson],
    initial_view_state=INITIAL_VIEW_STATE,
    tooltip={"text": "Value: {properties.valuePerSqm}\nGrowth: {properties.growth}"},
)

# Show in Streamlit
st.pydeck_chart(r)
