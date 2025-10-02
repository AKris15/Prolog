# 🧩 Porlog – Learn Prolog Through Q&A

Welcome to **Porlog** – a simple collection of basic **Prolog questions and answers** to help beginners learn and practice this fascinating logic programming language.

Whether you're just starting out or brushing up on the fundamentals, this repo is designed to give you:

* 📚 Clear examples of common Prolog problems
* 💡 Step-by-step solutions with explanations
* 🛠️ A hands-on way to learn by reading, running, and tweaking code

---

## 🚀 Why Porlog?

Prolog is powerful but can feel tricky at first. Instead of heavy theory, **Porlog focuses on practical Q&A** that makes learning interactive and approachable.

---

## ⚙️ Installation

To run these programs, you’ll need **SWI-Prolog**, one of the most popular Prolog implementations.

### Windows / macOS

1. Download the latest release from [SWI-Prolog official site](https://www.swi-prolog.org/Download.html).
2. Run the installer and follow the instructions.

### Linux (Debian/Ubuntu)

```bash
sudo apt-get update
sudo apt-get install swi-prolog
```

### Verify Installation

Run:

```bash
swipl
```

If you see the Prolog prompt:

```prolog
?- 
```

then you’re ready to go! 🎉

---

## 📂 How to Use the Files

Each question has its own **`.pl` file** (e.g., `answer.pl`) and a **README** with explanations.

### Load a File in Prolog

1. Open the Prolog REPL:

   ```bash
   swipl
   ```

2. Load a file:

   ```prolog
   ?- [answer].
   ```

   (Make sure `answer.pl` is in your current directory.)

3. Run queries as shown in the examples:

   ```prolog
   ?- greet_user.
   Please enter your name: John
   Hello, John! Welcome to Prolog.
   ```

### Alternative: Consult a File

You can also use:

```prolog
?- consult('answer.pl').
```

### Reload After Changes

If you edit the file and want to reload it inside Prolog:

```prolog
?- make.
```

---

## 📖 Example Workflow

Suppose you want to try the factorial program:

1. Start Prolog:

   ```bash
   swipl
   ```

2. Load the file:

   ```prolog
   ?- [factorial].
   ```

3. Run the query:

   ```prolog
   ?- factorial.
   Please enter a number to calculate its factorial: 5
   The factorial of 5 is 120.
   ```

---

## 🌱 How to Learn with This Repo

1. Browse through the **questions** in the repository.
2. Try solving them on your own first.
3. Check the provided **solutions and explanations**.
4. Experiment, improve, and even **add your own solutions**.

---

## 🤝 Contributions

🚀 Contributions are welcome!
If you have your own Prolog Q&A examples, feel free to open a PR and add to the collection.

---

## 💡 Let’s Learn Together

This project is for learners, by learners. The more we share, the more approachable Prolog becomes for everyone.

Happy coding in Prolog! 
~AK

