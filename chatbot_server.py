# chatbot_server.py
from flask import Flask, render_template, request, jsonify
from new_trail import get_c_code  # Import your chatbot function here

app = Flask(__name__ ,  static_url_path='/static')

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/api/chatbot', methods=['POST'])
def chatbot_api():
    try:
        user_message = request.json['message']
        # Call your chatbot function and get the response
        bot_response = get_c_code(user_message)
        return jsonify({'bot_response': bot_response})
    except Exception as e:
        return jsonify({'error': str(e)})

if __name__ == "__main__":
    app.run(debug=True)
