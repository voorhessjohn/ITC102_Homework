Sophia Allen

100 words on Email/DNS

After an email is written, the sender’s email service attaches a header to it that specifies information such as the content type, destination, return path, etc. Next, the email service connects via Simple Mail Transfer Protocol to a server that takes the message, reads the header, and sends a request to a DNS server asking for the address of the server specified in the header. If successful, the SMTP server then sends the message to be stored on that server. The recipient can then access the message via IMAP or POP3, depending on the type of email service they use. 
