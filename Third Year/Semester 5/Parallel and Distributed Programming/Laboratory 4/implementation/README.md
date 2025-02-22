# Goal

The goal of this lab is to use C# TPL futures and continuations in a more complex scenario, in conjunction with waiting for external events.

## Requirement

Write a program that is capable of simultaneously downloading several files through HTTP. Use directly the BeginConnect()/EndConnect(), BeginSend()/EndSend() and BeginReceive()/EndReceive() Socket functions, and write a simple parser for the HTTP protocol (it should be able only to get the header lines and to understand the Content-lenght: header line).

### Try three implementations:

Directly implement the parser on the callbacks (event-driven);
Wrap the connect/send/receive operations in tasks, with the callback setting the result of the task;
Like the previous, but also use the async/await mechanism.