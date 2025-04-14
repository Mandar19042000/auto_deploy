# Save this as streamlit_app.py and run with: streamlit run streamlit_app.py

import streamlit as st
import pydeck as pdk
import time

polygon_sets = [
    [  # First polygon
        [72.8740, 19.0716],
        [72.8750, 19.0716],
        [72.8750, 19.0724],
        [72.8740, 19.0724],
    ],
    [  # Second polygon
        [72.8760, 19.0717],
        [72.8770, 19.0717],
        [72.8770, 19.0725],
        [72.8760, 19.0725],
    ],
    [  # Third polygon
        [72.8785, 19.0722],
        [72.8795, 19.0722],
        [72.8795, 19.0730],
        [72.8785, 19.0730],
    ],
]

view_state = pdk.ViewState(
    latitude=19.0716, longitude=72.8740, zoom=17, pitch=50, bearing=0
)

for coords in polygon_sets:
    polygon_data = [{
        "polygon": coords,
        "elevation": 200,
        "fill_color": [0, 128, 255, 180]
    }]

    polygon_layer = pdk.Layer(
        "PolygonLayer",
        polygon_data,
        get_polygon="polygon",
        get_fill_color="fill_color",
        get_elevation="elevation",
        extruded=True,
        stroked=False,
        pickable=True,
    )

    r = pdk.Deck(
        layers=[polygon_layer],
        initial_view_state=view_state,
        tooltip={"text": "Live Polygon"},
    )

    st.pydeck_chart(r)
    time.sleep(2)
