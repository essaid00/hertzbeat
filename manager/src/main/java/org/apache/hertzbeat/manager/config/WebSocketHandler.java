package org.apache.hertzbeat.manager.config;

import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class WebSocketHandler extends TextWebSocketHandler {

    @Override
    protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
        String payload = message.getPayload();
        // Handle the received message here
        // Example: Echoing the received message back to the client
        session.sendMessage(new TextMessage("Echo: " + payload));
    }
}