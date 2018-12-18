module Icons exposing
    ( draw10px
    , draw14px
    , draw24px
    , draw34px
    , draw40pxWithColor
    , icons
    )

import Colors
import Element exposing (Color)
import Svg as S exposing (Svg)
import Svg.Attributes as SA


draw10px : String -> Svg msg
draw10px =
    draw 10


draw14px : String -> Svg msg
draw14px =
    draw 14


draw24px : String -> Svg msg
draw24px =
    draw 24


draw34px : String -> Svg msg
draw34px =
    draw 34


draw : Float -> String -> Svg msg
draw size d =
    S.svg
        [ SA.viewBox "0 0 100 100"
        , SA.width (String.fromFloat size)
        , SA.height (String.fromFloat size)
        ]
        [ S.path
            [ SA.d d
            , SA.fill (Colors.toString Colors.icon)
            ]
            []
        ]


draw40pxWithColor : Color -> String -> Svg msg
draw40pxWithColor color d =
    S.svg
        [ SA.viewBox "0 0 100 100"
        , SA.width (String.fromFloat 40)
        , SA.height (String.fromFloat 40)
        ]
        [ S.path
            [ SA.d d
            , SA.fill (Colors.toString color)
            ]
            []
        ]



--


icons =
    { zoom = "M83.47,76.29,63.81,56.92a26.81,26.81,0,0,0-2.79-34c-9.45-9.55-24.17-9.71-34-3.06C14.56,28.28,10.67,47.21,20.7,59.32c8.54,10.31,24.61,12.59,36.65,4.33L76.17,83A5.33,5.33,0,0,0,84,83,5.26,5.26,0,0,0,83.47,76.29Zm-27-19.42C48,65,33.53,64.55,25.89,55.29c-7.89-9.56-5-24.38,5-30.88A21.09,21.09,0,0,1,58.62,28.9,21.07,21.07,0,0,1,56.51,56.87Z"
    , resetZoomAndPan = "M19.65,71V38.35H15v-4.7L24.3,29H29V71Zm28-23.35v-9.3H57v9.3Zm0,23.35V61.65H57V71Zm28,0V38.35H71v-4.7L80.3,29H85V71Z"
    , fitToScreen = "M15,15H35.22l-7.78,7.78,14,14-4.66,4.66-14-14L15,35.22ZM85,85H64.78l7.78-7.78-14-14,4.66-4.66,14,14L85,64.78ZM15,85V64.78l7.78,7.78,14-14,4.66,4.66-14,14L35.22,85ZM85,15V35.22l-7.78-7.78-14,14-4.66-4.66,14-14L64.78,15Z"

    --
    , undo = "M15,65.67V34.33L27.54,46.87c1.31-1.17,14-12.09,31.34-8.36C77.8,42.58,84.59,60.37,85,61.49l-8.36,3.14A27.27,27.27,0,0,0,55.75,46.87c-12-2-20.69,5.2-21.94,6.26L46.34,65.67Z"
    , redo = "M53.66,65.67,66.19,53.13c-1.25-1.06-10-8.27-21.94-6.26A27.27,27.27,0,0,0,23.36,64.63L15,61.49c.41-1.12,7.2-18.91,26.12-23,17.3-3.73,30,7.19,31.34,8.36L85,34.33V65.67Z"
    , hand = "M47,84.42c2.59,0,4.89.15,7.15.3a66.71,66.71,0,0,0,12.41,0c2.64-6.33,5.27-13.42,7.82-20.3,2.93-7.9,6-16.06,9-23.21,1.91-4.45.24-7.4-.36-7.75a4.47,4.47,0,0,0-2.44.36,4.44,4.44,0,0,1-.16.6l-3.12,9.35a4.67,4.67,0,1,1-8.86-3l3.11-9.34q0-.14.09-.24A4.83,4.83,0,0,1,71.89,29a9.66,9.66,0,0,0-.17-7.5,3.88,3.88,0,0,0-2.33-2c-1.16-.3-3,.24-4.79,1.76L62,39.81a4.67,4.67,0,1,1-9.25-1.33L55.19,21a4.83,4.83,0,0,1-.2-1.37,4.68,4.68,0,0,0-9.35,0,4.73,4.73,0,0,1-.17,1.26l2.45,16a4.67,4.67,0,0,1-9.24,1.42L35.92,20.36a3.69,3.69,0,0,0-4-1.07A3.76,3.76,0,0,0,30,23.47c0,.09,0,.2.05.3l3,24.11,4.51,5.41a4.67,4.67,0,1,1-7.18,6l-7.53-9a6.26,6.26,0,0,0-2.4-.91,4.38,4.38,0,0,0-3.19.58,4.53,4.53,0,0,0-1.53,3.33,6.49,6.49,0,0,0,2,5.12c.12.12.24.24.35.37L39.8,84.81A66.3,66.3,0,0,1,47,84.42ZM80.75,32h0Z"
    , pen = "M29,64.23l13.16,10-13.88,10a3.59,3.59,0,0,1-5-5Zm3.35-4.78L45.48,69l22-30.62-13.16-10Q43.32,43.89,32.32,59.45Zm25.2-34.73L70.2,34.77l7.18-8.85c.05-.36.68-5.3-3.11-8.61A9.65,9.65,0,0,0,64,15.87Z"
    , pointer = "M69.51,51.72,52.3,52.87,67.21,79.26,56.89,85,43.11,57.46,30.49,68.93V15Z"
    , gravityCenter = "M67.7,26.54,79.24,15,85,20.76,73.46,32.3l6.48,6.48-18.8,0,0-18.74Zm-35.4,0L20.76,15,15,20.76,26.54,32.3l-6.48,6.48,18.8,0,0-18.74ZM67.7,73.46,79.24,85,85,79.24,73.46,67.7l6.48-6.48-18.8,0,0,18.74ZM38.84,79.94l0-18.74-18.8,0,6.48,6.48L15,79.24,20.76,85,32.3,73.46ZM50,41.85A8.15,8.15,0,1,0,58.15,50,8.15,8.15,0,0,0,50,41.85Z"

    --
    , yinAndYang = "M58.55,67.52a4.61,4.61,0,1,1-4.61-4.61A4.6,4.6,0,0,1,58.55,67.52Zm12.9-35A17.51,17.51,0,0,1,53.94,50,17.51,17.51,0,0,0,53,85a35,35,0,0,1,.9-70A17.51,17.51,0,0,1,71.45,32.51Zm-12.9,0a4.61,4.61,0,1,0-4.61,4.6A4.6,4.6,0,0,0,58.55,32.51Z"

    --
    , vader = "M65,20c9,5.84,13.54,17.52,12,30l9,34H83c-.93-2.69-2.43-7.25-4-13-4.24-15.56-4.26-22.76-10-26-2.7-1.53-6.06-1.83-8-2a27.14,27.14,0,0,0-10,1V16A26,26,0,0,1,65,20ZM53,48V60H72a14.12,14.12,0,0,0-4-9A14.68,14.68,0,0,0,53,48ZM33,51a14.12,14.12,0,0,0-4,9H48V48A14.68,14.68,0,0,0,33,51ZM66.55,82Q69.27,72,72,62H52ZM49,62H29q2.73,10,5.45,20Zm2,18H61L51,66ZM50,66,40,80H50Z"

    -- leftbar thin band
    , folder = "M31.39,34.87H72.11c4.19,0,4.19-4.35.16-4.35H44.12c-1.61,0-2.41-2.41-2.41-2.41s-1.13-3.54-3.39-3.54h-21c-3.06,0-2.25,3.54-2.25,3.54s4.67,39.77,5,42.19a4.06,4.06,0,0,0,2.82,3.13L28.4,38.26c.41-2.58,2.18-3.31,3-3.39Zm51,3.54H34.7A2.58,2.58,0,0,0,32.12,41l-5,31.87a2.57,2.57,0,0,0,2.58,2.57H77.42A2.58,2.58,0,0,0,80,72.86L85,41a2.58,2.58,0,0,0-2.58-2.58Z"
    , listOfThree = "M35.33,34.38H19a4,4,0,0,1-4-4V19a4,4,0,0,1,4-4H35.33a4,4,0,0,1,4,4V30.38A4,4,0,0,1,35.33,34.38Zm49.67-4V19a4,4,0,0,0-4-4H47.38a4,4,0,0,0-4,4V30.38a4,4,0,0,0,4,4H81A4,4,0,0,0,85,30.38Zm0,25.31V44.31a4,4,0,0,0-4-4H47.38a4,4,0,0,0-4,4V55.69a4,4,0,0,0,4,4H81A4,4,0,0,0,85,55.69ZM85,81V69.62a4,4,0,0,0-4-4H47.38a4,4,0,0,0-4,4V81a4,4,0,0,0,4,4H81A4,4,0,0,0,85,81ZM39.33,55.69V44.31a4,4,0,0,0-4-4H19a4,4,0,0,0-4,4V55.69a4,4,0,0,0,4,4H35.33A4,4,0,0,0,39.33,55.69Zm0,25.31V69.62a4,4,0,0,0-4-4H19a4,4,0,0,0-4,4V81a4,4,0,0,0,4,4H35.33A4,4,0,0,0,39.33,81Z"
    , magicStick = "M64.51,24.52,15,74.19,25.78,85,75.29,35.33ZM56.45,48.39l-5-5L63.35,31.54l4.95,5ZM35.74,25.74,38.38,15l3.95,10.74,7.79,3.1-7.19,3.93L38.21,41l-2.47-9.62L26.64,28Zm35,30.83,3.43-3.52v6l5,2-6.31,2.85-.5,7.18-3.59-8.25-6.94-.5,6.31-3-2.53-6.26Zm7.79-38.43,2.64-2.7V20L85,21.58l-4.84,2.19.44,6.69L77,23l-5.33-.39,4.84-2.31-1.93-4.81Z"
    , qForQuery = "M47.12,69.3a30.75,30.75,0,0,1-10.87-1.82,21.22,21.22,0,0,1-8.16-5.37A23.92,23.92,0,0,1,23,53.33a37.44,37.44,0,0,1-1.78-12.11,28.56,28.56,0,0,1,1.93-10.71,24.35,24.35,0,0,1,5.38-8.28,24.09,24.09,0,0,1,8.23-5.34A28.68,28.68,0,0,1,47.35,15a27.69,27.69,0,0,1,10.37,1.89,24.11,24.11,0,0,1,8.12,5.3,23.86,23.86,0,0,1,5.3,8.24A29,29,0,0,1,73,41.07q0,9.43-3.63,15.74a24.06,24.06,0,0,1-9.6,9.47l.24.47q5.1,10.59,10.05,10.59a9,9,0,0,0,2.28-.23A4.28,4.28,0,0,0,74,76.34a6,6,0,0,0,1.27-1.4c.39-.56.82-1.23,1.28-2a.84.84,0,0,1,.7-.5,1.39,1.39,0,0,1,.85.19,1.7,1.7,0,0,1,.62.7,1,1,0,0,1,0,.93A33.27,33.27,0,0,1,77,77.57a20.05,20.05,0,0,1-2.51,3.52,13.51,13.51,0,0,1-3.44,2.79A8.67,8.67,0,0,1,66.69,85,7.5,7.5,0,0,1,62,83.3a19.37,19.37,0,0,1-3.91-4.22,33.54,33.54,0,0,1-3-5.33q-1.27-2.84-2.13-5.07A28.26,28.26,0,0,1,47.12,69.3ZM45,53.13a12.54,12.54,0,0,1,6.11,1.78q3.18,1.79,6,6.58A23.47,23.47,0,0,0,61.54,53a35.87,35.87,0,0,0,1.59-10.79,47.92,47.92,0,0,0-.81-8.82,25.55,25.55,0,0,0-2.67-7.7A15.17,15.17,0,0,0,54.7,20.3a13.39,13.39,0,0,0-7.58-2.05,12.41,12.41,0,0,0-7.23,2.09,16.36,16.36,0,0,0-5,5.45A26.23,26.23,0,0,0,32,33.45a41,41,0,0,0-.93,8.7A52.68,52.68,0,0,0,32,51.78a21.5,21.5,0,0,0,3.09,8,11.85,11.85,0,0,1,1.28-2.43,9.2,9.2,0,0,1,2-2.13,10.24,10.24,0,0,1,2.82-1.51A11.48,11.48,0,0,1,45,53.13Zm2.48,12.92a12.5,12.5,0,0,0,4.17-.7,42.2,42.2,0,0,0-4.06-6.84,5.37,5.37,0,0,0-4.37-2.36,4.16,4.16,0,0,0-2.39.73,8.59,8.59,0,0,0-1.86,1.67,7.24,7.24,0,0,0-1.16,1.85,4.29,4.29,0,0,0-.39,1.24c0,.26.3.63.89,1.12a13,13,0,0,0,2.32,1.47,19.7,19.7,0,0,0,3.21,1.28A12.49,12.49,0,0,0,47.43,66.05Z"
    , lightning = "M43.11,51.72H31.64L45.41,15H63.77Q58.61,27.63,53.44,40.25H70.66L29.34,85Z"
    , algoVizPlay = "M50,15A35,35,0,1,0,85,50,35,35,0,0,0,50,15ZM38.17,70.94V29.06L70.21,50Z"
    , chessHorse = "M30.93,75.32h.21v-.74a1.73,1.73,0,0,1,1.72-1.73h.81a9.51,9.51,0,0,0-.07-3c-.93-4.19-2.07-8.35-3.37-12.44C28.08,50.71,26.79,44,28.92,37c2.38-7.8,7.1-13.34,15.13-15.75a2.87,2.87,0,0,0,1.44-1.19A17.19,17.19,0,0,1,50,15c.1.91.21,1.49.21,2.07,0,.86,0,1.73-.1,2.58-.11,1.2.26,1.92,1.58,2a14.15,14.15,0,0,1,2.16.51c0,2.68,0,2.68,2.43,3.67a17.8,17.8,0,0,1,2.38,1,6.72,6.72,0,0,1,1.57,1.4A46.81,46.81,0,0,0,63.31,32c2.35,2.18,4.81,4.26,7.3,6.28,1.08.88,1.9,1.67,1.36,3.21A3.22,3.22,0,0,0,72.13,43a5.74,5.74,0,0,1-2.53,5c-3.46,1.68-6.19,1.21-8.93-1.56a4,4,0,0,0-4.55-1.2,13.89,13.89,0,0,1-8.09.81l1.3,1.37A60.33,60.33,0,0,1,58.6,58.76c2,3.37,3.64,6.92,3.57,10.93a26.11,26.11,0,0,1-.28,3.16h.34A1.72,1.72,0,0,1,64,74.58v.74h.2a2,2,0,0,1,2,2V85H29V77.27A2,2,0,0,1,30.93,75.32Z"
    , preferencesGear = "M83.91,45.62c-.57-.35-5-3-6.74-3.8L75,36.57c.65-1.74,1.88-6.61,2.07-7.45A2.33,2.33,0,0,0,76.45,27l-3.4-3.4a2.33,2.33,0,0,0-2.17-.62c-.64.14-5.64,1.4-7.45,2.07l-5.25-2.17c-.77-1.68-3.33-6-3.8-6.74a2.33,2.33,0,0,0-2-1.09H47.6a2.33,2.33,0,0,0-2,1.09c-.35.57-3,5-3.8,6.74L36.57,25c-1.74-.65-6.6-1.88-7.45-2.07a2.33,2.33,0,0,0-2.17.62L23.55,27a2.33,2.33,0,0,0-.62,2.17c.14.64,1.4,5.64,2.07,7.45l-2.17,5.25c-1.68.77-6,3.33-6.74,3.8a2.33,2.33,0,0,0-1.09,2v4.8a2.33,2.33,0,0,0,1.09,2c.57.35,5,3,6.74,3.8L25,63.43c-.65,1.74-1.88,6.6-2.07,7.45a2.33,2.33,0,0,0,.62,2.17l3.4,3.4a2.33,2.33,0,0,0,2.17.62c.64-.14,5.64-1.4,7.45-2.07l5.25,2.17c.77,1.68,3.33,6,3.8,6.74a2.33,2.33,0,0,0,2,1.09h4.8a2.33,2.33,0,0,0,2-1.09c.35-.57,3-5,3.8-6.74L63.43,75c1.74.65,6.6,1.88,7.45,2.07a2.33,2.33,0,0,0,2.17-.62l3.4-3.4a2.33,2.33,0,0,0,.62-2.17c-.14-.64-1.4-5.64-2.07-7.45l2.17-5.25c1.68-.77,6-3.33,6.74-3.8a2.33,2.33,0,0,0,1.09-2V47.6A2.33,2.33,0,0,0,83.91,45.62ZM50,65.26A15.26,15.26,0,1,1,65.26,50,15.28,15.28,0,0,1,50,65.26Z"

    --
    , githubCat = "M85.89,50.89a35.89,35.89,0,0,1-24.52,34c-1.83.35-2.47-.76-2.47-1.72,0-1.18,0-5,0-9.85,0-3.34-1.15-5.53-2.43-6.64,8-.89,16.38-3.92,16.38-17.71a13.85,13.85,0,0,0-3.69-9.63,12.89,12.89,0,0,0-.36-9.5s-3-1-9.85,3.68a34,34,0,0,0-18,0c-6.86-4.64-9.87-3.68-9.87-3.68a12.92,12.92,0,0,0-.35,9.5A13.86,13.86,0,0,0,27.1,49c0,13.75,8.38,16.83,16.35,17.74a7.62,7.62,0,0,0-2.28,4.79c-2,.92-7.24,2.51-10.44-3,0,0-1.9-3.44-5.5-3.7,0,0-3.5,0-.25,2.19,0,0,2.36,1.1,4,5.24,0,0,2.11,7,12.09,4.82,0,3,0,5.25,0,6.1s-.66,2.06-2.45,1.73a35.89,35.89,0,1,1,47.23-34Z"
    , donateHeart = "M87.92,35.61C86.93,24.4,79,15,68,15A19.91,19.91,0,0,0,49.77,27.37C46.7,20.09,40.14,15,32,15c-11,0-18.91,9.4-19.9,20.61,0,0-.54,2.78.64,7.79a34.43,34.43,0,0,0,10.5,17.5L49.77,85l27-24.1a34.43,34.43,0,0,0,10.5-17.5C88.46,38.39,87.92,35.61,87.92,35.61ZM59.86,65.17a11,11,0,0,1-5.73,3.67,1.62,1.62,0,0,0-1.39,1.83c0,1,0,2,0,3a1.25,1.25,0,0,1-1.35,1.41c-1.08,0-2.18,0-3.27,0a1.32,1.32,0,0,1-1.42-1.5c0-.74,0-1.48,0-2.22,0-1.64-.07-1.7-1.64-2a20.4,20.4,0,0,1-5.83-1.67c-1.45-.71-1.61-1.07-1.19-2.58.31-1.13.62-2.26,1-3.38.41-1.29.76-1.45,2-.83a18.84,18.84,0,0,0,6.47,1.93,7.91,7.91,0,0,0,4.25-.55,3.31,3.31,0,0,0,.78-5.8A9.53,9.53,0,0,0,50,55.16a59.52,59.52,0,0,1-6.62-3c-3.39-2-5.55-4.82-5.29-9,.28-4.67,2.92-7.58,7.2-9.14,1.77-.64,1.78-.61,1.79-2.46,0-.63,0-1.25,0-1.87,0-1.39.27-1.64,1.65-1.67.43,0,.85,0,1.28,0,3,0,3,0,3,2.94,0,2.09,0,2.1,2.09,2.42a18.32,18.32,0,0,1,4.58,1.37,1.34,1.34,0,0,1,.87,1.78c-.38,1.27-.72,2.56-1.13,3.82s-.77,1.37-1.91.82a14.64,14.64,0,0,0-7.27-1.44,5.42,5.42,0,0,0-1.94.4,2.75,2.75,0,0,0-.68,4.89,12.86,12.86,0,0,0,3.16,1.76,58.4,58.4,0,0,1,5.76,2.61C62.44,52.72,64,60.11,59.86,65.17Z"

    -- other
    , checkMark = "M14.62,62.94A8.74,8.74,0,0,1,16,55.11a8.36,8.36,0,0,1,8.18-2.84L38.79,66.49,73.28,16.36a8.28,8.28,0,0,1,9.6.35,8.55,8.55,0,0,1,2.84,7.12L46.26,82.49a10.48,10.48,0,0,1-6,2.49A10.94,10.94,0,0,1,32,81.78Z"
    , questionMark = "M31.07,38.61c-2.56-.78-3.91-3.69-4.24-5.8-1-6.5,6.53-12,8.09-13.18A25.74,25.74,0,0,1,51.4,15c9.77.26,18.05,5.13,20.8,12.43a18.27,18.27,0,0,1-1.22,15c-4.47,7.75-14.16,8.71-16.45,15.66a7.5,7.5,0,0,1-2.79,4.19,6,6,0,0,1-4.66.81c-2.89-.78-4.73-4.25-5-6.75C41.07,47.4,59.54,43,59,34a9.74,9.74,0,0,0-8.1-8.38c-4.09-.49-8.53,2.42-10.67,7.36C38.08,37.38,34.05,39.51,31.07,38.61ZM42.75,72.3A7.42,7.42,0,0,0,41,77.91a8.14,8.14,0,0,0,2,4.46A8.39,8.39,0,0,0,48.9,85a8.19,8.19,0,0,0,5.47-2.84,8.06,8.06,0,0,0,1.82-4.66A8.12,8.12,0,0,0,49.24,70,7.67,7.67,0,0,0,42.75,72.3Z"
    , plus = "M85,43.9V56.1a3.23,3.23,0,0,1-3.23,3.23H60.22V81.77A3.24,3.24,0,0,1,57,85H44.79a3.24,3.24,0,0,1-3.24-3.23V59.33H18.23A3.23,3.23,0,0,1,15,56.1V43.9a3.23,3.23,0,0,1,3.23-3.23H41.55V18.23A3.24,3.24,0,0,1,44.79,15H57a3.24,3.24,0,0,1,3.23,3.23V40.67H81.77A3.23,3.23,0,0,1,85,43.9Z"
    , trash = "M25,29.26V24.07H37.5c-.52-3.1.34-6.13,2.27-7.77A5.54,5.54,0,0,1,43.18,15H58a5.84,5.84,0,0,1,2.28,1.3c2.8,2.6,2.33,7.3,2.27,7.77H75v5.19H70.45v48a9.17,9.17,0,0,1-1.13,3.89A7.94,7.94,0,0,1,63.64,85H37.5a8.19,8.19,0,0,1-6.82-3.89,9,9,0,0,1-1.13-3.89v-48Zm17-5.19H58a4.88,4.88,0,0,0,0-3.88,3.42,3.42,0,0,0-1.13-1.3H43.18a3.42,3.42,0,0,0-1.13,1.3A4.88,4.88,0,0,0,42.05,24.07ZM39.77,35.74V72h3.41V35.74Zm9.09,0V72h3.41V35.74Zm9.09,0V72h3.41V35.74Z"
    , selectionRect = "M84.75,25.37h-10V15h10Zm-19.93,0h-10V15h10Zm-19.93,0h-10V15h10ZM25,25.37H15V15H25ZM84.75,85h-10V74.63h10ZM64.82,85h-10V74.63h10ZM44.89,85h-10V74.63h10ZM25,85H15V74.63H25Zm0-19.61H15V55H25Zm0-20.74H15V34.28H25ZM85,65.39H75V55H85Zm0-20.74H75V34.28H85Z"
    , selectionLine = "M24.32,85,15,76.79,23.67,68,33,76.17ZM41.65,67.35l-9.31-8.22L41,50.31l9.31,8.21ZM59,49.69l-9.31-8.21,8.67-8.83,9.31,8.22ZM76.33,32,67,23.83,75.68,15,85,23.21Z"
    , edgeContract = "M81.61,34.77a11.59,11.59,0,0,1-14.19,1.71l-6.34,6.34,4.36,4.37-11.6,2.42-5.06,5.06q-1.22,5.8-2.42,11.6L42,61.91l-5.51,5.51a11.6,11.6,0,1,1-3.88-3.88L38.11,58c-1.45-1.47-2.9-3-4.36-4.42L44.84,51.3l5.63-5.63,2.31-11.08,4.41,4.35,6.35-6.34a11.58,11.58,0,1,1,18.07,2.17Z"

    --
    , menuOn = "M41.12,24.19l24.37,22.7a4.49,4.49,0,0,1,1.44,3.34s0,.05,0,.08v.08a4.5,4.5,0,0,1-1.5,3.32L40.57,75.87a4.5,4.5,0,0,1-6-6.72l21.26-19L35,30.78a4.5,4.5,0,0,1,6.13-6.59Z"
    , menuOff = "M75.81,41.12,53.11,65.49a4.49,4.49,0,0,1-3.34,1.44h-.16a4.5,4.5,0,0,1-3.32-1.5L24.13,40.57a4.5,4.5,0,0,1,6.72-6l19,21.26L69.22,35a4.5,4.5,0,0,1,6.59,6.13Z"

    --
    , duplicate = "M65,37.5v40H20v-40H65m5-5H15v50H70v-50Zm-40-15v20h5v-15H80v40H65v5H85v-50ZM30,55H55v5H30ZM40,45h5V70H40Z"
    , rename = "M70.84,26.94l0,0a4.49,4.49,0,0,0-.23-6.08l-4.52-4.52A4.5,4.5,0,0,0,60,16.07l0,0-.26.27-4.52,4.52,10.9,10.9ZM30.26,67.43l0,0L62.93,34.8,52,23.9,19.39,56.54h0v10.9h10.9Zm-10.9,8.81H80.64V85H19.36Z"
    , save = "M61.66,38.34V22.84H22.84V38.33H61.66ZM50,77.16A11.6,11.6,0,0,0,58.2,57.3a11.45,11.45,0,0,0-16.4,0A11.66,11.66,0,0,0,50,77.16ZM69.51,15,85,30.49V77.16A8.11,8.11,0,0,1,77.16,85H22.84a7.4,7.4,0,0,1-5.56-2.37A7.65,7.65,0,0,1,15,77.16V22.84a7.69,7.69,0,0,1,2.28-5.48A7.44,7.44,0,0,1,22.84,15Z"
    , closeFile = "M85,20.22,55.22,50,50,44.78,79.78,15Zm0,59.56L55.22,50,50,55.22,79.78,85ZM20.22,85,50,55.22,44.78,50,15,79.78ZM15,20.22,44.78,50,50,44.78,20.22,15Zm35,35L55.22,50,50,44.78,44.78,50Z"
    , editedPen = "M85,30.86l-10,10L59.74,25.49l9.95-9.94ZM56.9,28.33,15,70.23V84.45H31.41l40.8-40.81Z"

    --
    , elmLogo = "M50,48.08,65.13,33H34.87ZM16.92,15,32.16,30.24H65.28L50,15ZM68.48,33.44,85,49.92,68.4,66.48,51.92,50ZM85,46.12V15H53.88ZM48.08,50,15,16.92V83.08ZM70.33,68.41,85,83.08V53.73ZM50,51.92,16.92,85H83.08Z"
    }
