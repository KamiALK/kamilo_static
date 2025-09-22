console.log("todo se encuentra fruncionando");
document.addEventListener("DOMContentLoaded", () => {
	const button = document.getElementById("test-bin");
	const output = document.getElementById("output");

	if (button && output) {
		button.addEventListener("click", () => {
			output.innerHTML = `<p>Typescript se encuentra contectado a  las ${new Date().toLocaleString()}</p>`;
		});
	}
});
