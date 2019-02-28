#!/Users/wuz/.asdf/installs/nodejs/11.0.0/bin/node
/* jshint esversion: 6 */

//# <bitbar.title>emojiWeather</bitbar.title>
//# <bitbar.version>v1.0</bitbar.version>
//# <bitbar.author>Chandler Davidson</bitbar.author>
//# <bitbar.author.github>Chandler-Davidson</bitbar.author.github>
//# <bitbar.desc>Displays weather info as an emoji.</bitbar.desc>
//# <bitbar.image>https://static1.squarespace.com/static/5818f78ef5e2314f65b76331/t/59ded8e6bce1769ff7340715/1507776754374/emojiWeather?format=1500w</bitbar.image>
//# <bitbar.dependencies>node/bitbar.dependencies>
//# <bitbar.abouturl>https://github.com/Chandler-Davidson/emojiWeather/blob/master/emojiWeather.1h.js</bitbar.abouturl>


let request = require('request');

let apiKey = '6577eb3b0134c8c0da565069a43b66a4';    // https://home.openweathermap.org/api_keys
let city = 'Indianapolis';
let url = `http://api.openweathermap.org/data/2.5/weather?q=${city}&units=imperial&appid=${apiKey}`;

let emojis = [
    ':cry:',        // No connection
    '::',           //
    ':zap:',        // Thunderstorm
    ':umbrella:',    // Rain
    '::',           //
    ':cloud:',      // Cloudy
    ':snowflake:',  // Snow
    '::',           //
    ':sunny:',      // Clear
    ':cyclone:'];    // Extreme

let text = [
    'No connection',        // No connection
    '',           //
    'Thunderstorm',        // Thunderstorm
    'Rain',    // Rain
    '',           //
    'Cloudy',      // Cloudy
    'Snow',  // Snow
    'Misty',           //
    'Clear',      // Clear
    'Extreme'];    // Extreme

request(url, function (err, response, body) {   // Collect JSON object
    if (err || (response && response.statusCode !== 200)) {  // If no connection, so sad...
        console.log(emojis[0]);
    } else {

        let weather = JSON.parse(body);
        let id = weather.weather[0].id; // Seperate the weather ID
        id = Math.ceil(id / 100);       // Get only the hundreds place (1xx, 2xx)

        console.log(emojis[id]);        // Print the emoji
        console.log('---');
        console.log(text[id]);        // Print the emoji
        console.log(`Open API | bash='open' param1="${url}" terminal=true refresh=true`);
    }
});
