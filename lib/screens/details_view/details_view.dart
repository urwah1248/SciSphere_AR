// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:scisphere/constants/data.dart';
// import 'package:flutter_markdown/flutter_markdown.dart';
// import 'package:markdown/markdown.dart' as md;

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.title});
  final String title;

//   static Map data = {
//     "Stack":
//         "Stack is a linear data structure based on LIFO(Last In First Out) principle in which the insertion of a new element and removal of an existing element takes place at the same end represented as the top of the stack.",
//     "Stack_Operations": [
//       "1. push() to insert an element into the stack",
//       "2. pop() to remove an element from the stack",
//       "3. top() Returns the top element of the stack.",
//       "4. isEmpty() returns true if stack is empty else false.",
//       "5. isFull() returns true if the stack is full else false ",
//     ],
//     "Stack_Code": """from sys import maxsize

// #
// def createStack():
//     stack = []
//     return stack

// def isEmpty(stack):
//     return len(stack) == 0

// def push(stack, item):
//     stack.append(item)
//     print(item + " pushed to stack ")

// def pop(stack):
//     if (isEmpty(stack)):
//         return str(-maxsize -1)

//     return stack.pop()

// def peek(stack):
//     if (isEmpty(stack)):
//         return str(-maxsize -1)
//     return stack[len(stack) - 1]

// stack = createStack()
// push(stack, str(10))
// push(stack, str(20))
// push(stack, str(30))
// print(pop(stack) + " popped from stack")""",
//     "Queue":
//         "A Queue Data Structure is a fundamental concept in computer science used for storing and managing data in a specific order. It follows the principle of “First in, First out” (FIFO), where the first element added to the queue is the first one to be removed. Queues are commonly used in various algorithms and applications for their simplicity and efficiency in managing data flow.",
//     "Queue_Operations": [
//       "1. Enqueue: Adds (or stores) an element to the end of the queue.",
//       "2. Dequeue: Removal of elements from the queue.",
//       "3. Peek or front: Acquires the data element available at the front node of the queue without deleting it.",
//       "4. rear: This operation returns the element at the rear end without removing it.",
//       "5. isFull: Validates if the queue is full.",
//       "6. isEmpty: Checks if the queue is empty.",
//     ],
//     "Queue_Code": """queue = []
// queue.append('a')
// queue.append('b')
// queue.append('c')
// print("Initial queue")
// print(queue)
// print("\nElements dequeued from queue")
// print(queue.pop(0))
// print(queue.pop(0))
// print(queue.pop(0))
// print("\nQueue after removing elements")
// print(queue)""",
//   };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          title,
          style: const TextStyle(color: Colors.black, fontSize: 22),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailPageCard(
                isCenter: true,
                height: size.height * 0.4,
                content: data[title],
                title: "Definition"),
            DetailPageCard(
                isCenter: false,
                height: size.height * 0.4,
                content: data["${title}_Operations"].join("\n"),
                title: title),
            // DetailPageCard(size: size, data: data, title: title),
            // SizedBox(
            //   height: size.height * 0.4,
            //   width: size.width,
            //   child: Card(
            //     elevation: 10,
            //     shape: RoundedRectangleBorder(
            //         borderRadius: BorderRadius.circular(20)),
            //     child: Padding(
            //       padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
            //       child: Column(
            //         children: [
            //           const Text(
            //             "Operation\n",
            //             style: TextStyle(
            //               fontSize: 28,
            //               fontWeight: FontWeight.w400,
            //               color: Color(0xff66328E),
            //             ),
            //             textAlign: TextAlign.center,
            //           ),
            //           Text(
            //             data[0]['${title}_Operations'].join("\n"),
            //             style: const TextStyle(
            //               fontSize: 20,
            //               fontWeight: FontWeight.w400,
            //               color: Colors.black,
            //             ),
            //             textAlign: TextAlign.left,
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            // Container(
            //   // width: size.width,/
            //   // height: size.height * 0.2,
            //   child: MarkdownBody(
            //     data: data["${title}_Code"],
            //     extensionSet: md.ExtensionSet(
            //       md.ExtensionSet.gitHubFlavored.blockSyntaxes,
            //       <md.InlineSyntax>[
            //         md.EmojiSyntax(),
            //         ...md.ExtensionSet.gitHubFlavored.inlineSyntaxes
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}

class DetailPageCard extends StatelessWidget {
  const DetailPageCard({
    super.key,
    required this.height,
    required this.content,
    required this.title,
    required this.isCenter,
  });

  final double height;
  final String content;
  final String title;
  final bool isCenter;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: height,
      width: double.infinity,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 12, 12, 12),
          child: Column(
            children: [
              Text(
                "$title\n",
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff66328E),
                ),
                textAlign: TextAlign.center,
              ),
              Text(content,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  textAlign: isCenter ? TextAlign.center : TextAlign.left),
            ],
          ),
        ),
      ),
    );
  }
}
