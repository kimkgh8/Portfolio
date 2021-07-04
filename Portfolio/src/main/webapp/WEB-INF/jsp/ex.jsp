<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <title></title>

        <style type="text/css">
            body {
                margin: 0;
                padding: 0;
            }

            .container {
                position: absolute;
                overflow: hidden;
                width: 320px;
                height: 5000px;
            }

            .screen {
                position: absolute;
                width: 320px;
                height: 5000px;
                transition: left 0.5s;
            }

            #screen1 {
                background: linear-gradient(red, yellow);
            }

            #screen2 {
                left: 320px;
                background: linear-gradient(green, blue);
            }

            #button {
                position: fixed;
                left: 20px;
                top: 20px;
                width: 100px;
                height: 50px;
                background-color: white;
                color: black;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div id="screen1" class="screen"></div>
            <div id="screen2" class="screen"></div>
        </div>

        <div id="button">transition</div>


        <script type="text/javascript">
            var screenActive = 1;
            var screen1 = document.getElementById('screen1');
            var screen2 = document.getElementById('screen2');
            var screen1ScrollTop = 0;
            var screen2ScrollTop = 0;

            function onClick()
            {
                console.log('getting the event');

                if ( screenActive === 1 ) {
                    // will show screen 2
                    screen1ScrollTop = document.body.scrollTop;

                    screen1.style.position = 'fixed';
                    screen2.style.position = 'fixed';
                    screen1.style.top = (0 - screen1ScrollTop) + 'px';
                    screen2.style.top = (0 - screen2ScrollTop) + 'px';

                    screenActive = 2;
                    screen1.style.left = '-320px';
                    screen2.style.left = '0px';
                }
                else {
                    // will show screen 1
                    screen2ScrollTop = document.body.scrollTop;

                    screen1.style.position = 'fixed';
                    screen2.style.position = 'fixed';
                    screen1.style.top = (0 - screen1ScrollTop) + 'px';
                    screen2.style.top = (0 - screen2ScrollTop) + 'px';

                    screenActive = 1;
                    screen1.style.left = '0px';
                    screen2.style.left = '320px';
                }
            }

            function onTransitionEnd(event)
            {
                if ( screenActive === 1 ) {
                    window.scrollTo(0, screen1ScrollTop);
                }
                else {
                    window.scrollTo(0, screen2ScrollTop);
                }

                screen1.style.position = 'absolute';
                screen1.style.top = '0px';

                screen2.style.position = 'absolute';
                screen2.style.top = '0px';
            }

            screen1.addEventListener('webkitTransitionEnd', onTransitionEnd);
            document.getElementById('button').addEventListener('click', onClick);
        </script>

    </body>
</html>