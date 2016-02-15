 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: ball paddle game with Donald Trump head
// Goals: learn ball paddle game
// Characters: 
// Objects:
// Functions: drawBricks, drawBall, drawPaddle, drawScore, drawLives, collisionDetection

// Initial Code

// Store canvas element to canvas var
var canvas = document.getElementById("myCanvas");
// Contxt var stores the tool we paint on the canvas
var ctx = canvas.getContext("2d");
var ballRadius = 10;
// Starting point for the ball
var x = canvas.width/2;
var y = canvas.height-30;
// Adding distance to the ball each frame
var dx = 2;
var dy = -2;
var paddleHeight = 10;
var paddleWidth = 75;
// Starting point for paddle
var paddleX = (canvas.width-paddleWidth)/2;
// Need to be false as the keys for right & left are not being pressed yet.
var rightPressed = false;
var leftPressed = false;
var brickRowCount = 5;
var brickColumnCount = 3;
var brickWidth = 75;
var brickHeight = 20;
var brickPadding = 10;
var brickOffsetTop = 30;
var brickOffsetLeft = 30;
var score = 0;
var lives = 3;
// Create 2D array for columns and rows of bricks.  Loops through the rows and columns to create new bricks.
var bricks = [];
for(c=0; c<brickColumnCount; c++) {
    bricks[c] = [];
    for(r=0; r<brickRowCount; r++) {
        bricks[c][r] = { x: 0, y: 0, status: 1 };
    }
}
// when a key is pressed, initiates keyDownHandler
document.addEventListener("keydown", keyDownHandler, false);
// when a key is released, initiates keyUpHandler
document.addEventListener("keyup", keyUpHandler, false);
// looks for mouse movement
document.addEventListener("mousemove", mouseMoveHandler, false);

// key 39 is right arrow and 37 is left arrow. key is pressed var set to true, when released set to false. e is short for event
function keyDownHandler(e) {
    if(e.keyCode == 39) {
        rightPressed = true;
    }
    else if(e.keyCode == 37) {
        leftPressed = true;
    }
}
function keyUpHandler(e) {
    if(e.keyCode == 39) {
        rightPressed = false;
    }
    else if(e.keyCode == 37) {
        leftPressed = false;
    }
}
function mouseMoveHandler(e) {
    // equal to horizontal mouse position minus distance between left endge of canvas and viewport - equal to distance between canvas left edge and the mouse pointer.
    var relativeX = e.clientX - canvas.offsetLeft;
    // pointer is greater than 0 and lower than canvas width, the pointer is within the canvas, movement will be relative to paddle.
    if(relativeX > 0 && relativeX < canvas.width) {
        paddleX = relativeX - paddleWidth/2;
    }
}
function collisionDetection() {
    for(c=0; c<brickColumnCount; c++) {
        for(r=0; r<brickRowCount; r++) {
            var b = bricks[c][r];
        // The x position of the ball is greater than the x position of the brick.
        // The x position of the ball is less than the x position of the brick plus its width.
        // The y position of the ball is greater than the y position of the brick.
        // The y position of the ball is less than the y position of the brick plus its height.
            if(b.status == 1) {
                // Brick is hit, change status to 0 eliminating from screen
                if(x > b.x && x < b.x+brickWidth && y > b.y && y < b.y+brickHeight) {
                    dy = -dy;
                    b.status = 0;
                    // Point for each brick hit
                    score++;
                    // Win the game message
                    if(score == brickRowCount*brickColumnCount) {
                        alert("YOU WIN, CONGRATS!");
                        document.location.reload();
                    }
                }
            }
        }
    }
}

function drawBall() {
    // bP is starting point
    ctx.beginPath();
    // defining arc. first two specify coordinates, second two specify height & width
    ctx.arc(x, y, ballRadius, 0, Math.PI*2);
    // color
    ctx.fillStyle = "#0095DD";
    // color method
    ctx.fill();
    // cP will feed back to bP
    ctx.closePath();
}
function drawPaddle() {
    // bP is starting point
    ctx.beginPath();
    // defining rectangle. first two specify coordinates, second two specify height & width
    ctx.rect(paddleX, canvas.height-paddleHeight, paddleWidth, paddleHeight);
    // color
    ctx.fillStyle = "#0095DD";
    // color method
    ctx.fill();
    // cP will feed back to bP
    ctx.closePath();
}
function drawBricks() {
    // loop through brick columns
    for(c=0; c<brickColumnCount; c++) {
        // loop through brick row
        for(r=0; r<brickRowCount; r++) {
            // brick's status is one, draw it
            if(bricks[c][r].status == 1) {
                // each brick's position is width + padding * row number c plus last brick
                var brickX = (r*(brickWidth+brickPadding))+brickOffsetLeft;
                // same as brickX except it uses value for column number r, height, & brickOffsetTop
                var brickY = (c*(brickHeight+brickPadding))+brickOffsetTop;
                bricks[c][r].x = brickX;
                bricks[c][r].y = brickY;
                // starts content
                ctx.beginPath();
                // creates multiple rectangle bricks
                ctx.rect(brickX, brickY, brickWidth, brickHeight);
                // color
                ctx.fillStyle = "#0095DD";
                // fill function
                ctx.fill();
                // loops back to bP
                ctx.closePath();
            }
        }
    }
}
function drawScore() {
    ctx.font = "16px Arial";
    ctx.fillStyle = "#0095DD";
    ctx.fillText("Score: "+score, 8, 20);
}
function drawLives() {
    ctx.font = "16px Arial";
    ctx.fillStyle = "#0095DD";
    ctx.fillText("Lives: "+lives, canvas.width-65, 20);
}

function draw() {
    // defining rect. (starting points, width & height)
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    // Activates all functions
    drawBricks();
    drawBall();
    drawPaddle();
    drawScore();
    drawLives();
    collisionDetection();
    
    // Bounce ball off of left & right edges, ballRadius has bounce happen with edge of ball not when it completely leaves the screen
    if(x + dx > canvas.width-ballRadius || x + dx < ballRadius) {
        dx = -dx;
    }
    // Bounce ball off of top
    if(y + dy < ballRadius) {
        dy = -dy;
    }
    // Ball hits the paddle, sends ball on like a wall if ball hits paddle
    else if(y + dy > canvas.height-ballRadius) {
        if(x > paddleX && x < paddleX + paddleWidth) {
            dy = -dy;
        }
        else {
            lives--;
            if(!lives) {
                // ball doesn't hit paddle and hits bottom of canvas
                alert("GAME OVER");
                document.location.reload();
            }
            else {
                x = canvas.width/2;
                y = canvas.height-30;
                dx = 3;
                dy = -3;
                paddleX = (canvas.width-paddleWidth)/2;
            }
        }
    }
    // movement of paddle 7 pixels
    if(rightPressed && paddleX < canvas.width-paddleWidth) {
        paddleX += 7;
    }
    else if(leftPressed && paddleX > 0) {
        paddleX -= 7;
    }
    // modifying flight path of ball to constantly keep moving 2
    x += dx;
    y += dy;
    requestAnimationFrame(draw);
}

// initiates draw function
draw();

// Reflection

//What was the most difficult part of this challenge?
// Not enough time.  I tried to go to complex.  Took a lot of tutorials and reading just to get to where I did.  Couldn't get trumps head to replace bricks.
// 
// What did you learn about creating objects and functions that interact with one another? 
// Makes code less DRY having variables that are going to be reused set as variables.
// 
// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work? 
// Learned a lot about canvas.  Wish I had more time to play with.
// 
// How can you access and manipulate properties of objects?
// By setting them as variables.
//
//