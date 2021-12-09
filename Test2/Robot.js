Miguel and Andrea

var color1 = { r: 255, g: 150, b: 148 };
var color0 = { r: 255, g: 115, b: 200 };
var str0 = 'Hello!';
var playername = 'Hi';
var expire = 'Expire';
var toss = 10;
var expire2 = 0;


async function startProgram() {
	playMatrixAnimation(0, true);
	// 1st Change - Adding Stabilization -Keeps the
	// Robot upright and the design on the LED Matrix
	setStabilization(true);
	await speak('Play hot potato', true);
	// 2nd Change-This is an Example of a While Loop, We execute a game of hot potato
	while (true) {
		toss = 0;
		expire2 = getRandomFloat(2, 5);
		while (!(toss > expire2)) {
			await strobe({ r: 54, g: 255, b: 95 }, 0.1, 1);
			toss = toss + 1;
			setMainLed({ r: 255, g: 68, b: 233 });
			await rawMotor(0, 255, 0.1);
			await delay(0.025);
		}
		await delay(1);
		await speak('You’re out ', false);
		toss = 5;
		await delay(0.5);
		setMainLed({ r: 247, g: 143, b: 255 });
		// 3rd Change - Execution of For Loop - Changes Directional Movement Internal Motor
		//
		// Negative- changes direction backwards
		// Positive- changes direction forward
		for (var _i0 = 0; _i0 < 5; ++_i0) {
			await rawMotor(187, 185, 0.2);
			await rawMotor(-173, -183, 0.2);
			await delay(0.025);
		}
		await delay(1);
		toss = 0;
		await delay(0.025);
	}
}

async function onCollision() {
	await speak('Ouch', true);
	await Sound.Animal.Cat.play(true);
}
registerEvent(EventType.onCollision, onCollision);

registerMatrixAnimation({
	frames: [[[1, 0, 0, 0, 0, 0, 0, 1], [0, 0, 5, 5, 0, 5, 0, 1], [0, 5, 5, 5, 5, 5, 5, 1], [0, 5, 5, 5, 5, 0, 5, 1], [1, 5, 5, 5, 0, 5, 5, 1], [1, 5, 5, 5, 5, 5, 0, 0], [0, 0, 0, 5, 5, 0, 0, 0], [1, 1, 1, 1, 0, 0, 0, 0]]],
	palette: [{ r: 255, g: 255, b: 255 }, { r: 0, g: 0, b: 0 }, { r: 255, g: 0, b: 0 }, { r: 255, g: 64, b: 0 }, { r: 255, g: 128, b: 0 }, { r: 255, g: 191, b: 0 }, { r: 255, g: 255, b: 0 }, { r: 185, g: 246, b: 30 }, { r: 0, g: 255, b: 0 }, { r: 185, g: 255, b: 255 }, { r: 0, g: 255, b: 255 }, { r: 0, g: 0, b: 255 }, { r: 145, g: 0, b: 211 }, { r: 157, g: 48, b: 118 }, { r: 255, g: 0, b: 255 }, { r: 204, g: 27, b: 126 }],
	fps: 10,
	transition: MatrixAnimationTransition.None
});
