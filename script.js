function sendMessage() {
    var userInput = document.getElementById('user-input').value;
    appendToChatLog('User: ' + userInput);
    
    // Here, you can add logic to send the user input to your backend (Python) for processing
    // and receive the chatbot's response.
    // For simplicity, let's assume the chatbot responds immediately.

    var chatbotResponse = 'Chatbot: Hi there! I am your chatbot.';
    appendToChatLog(chatbotResponse);

    // Clear the user input field
    document.getElementById('user-input').value = '';
}

function appendToChatLog(message) {
    var chatLog = document.getElementById('chat-log');
    var messageElement = document.createElement('div');
    messageElement.textContent = message;
    chatLog.appendChild(messageElement);

    // Scroll to the bottom of the chat log to show the latest message
    chatLog.scrollTop = chatLog.scrollHeight;
}
