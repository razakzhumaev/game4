import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  startGame();
}

startGame() {
  firstRound();
  secondRound();
  thirdRound();
}

firstRound() {
  print('Пользователь загадывает число, а компьютер отгадывает');
  int min = 1;
  int max = 100;
  int count = 0;
  int compNumber = (min + max) ~/ 2;
  String myInput = '';

  while (myInput != 'yes') {
    count++;
    compNumber = (min + max) ~/ 2;
    print('Is it $compNumber ?');
    myInput = stdin.readLineSync()!.toLowerCase();

    if (myInput == 'greater') {
      min = compNumber + 1;
    } else if (myInput == 'less') {
      max = compNumber - 1;
    }
  }
  print('Компьютер угадал число пользователя за $count шага(ов)');

  print('2-ой этап');
  print('Теперь компьютер загадывает число, а пользователь отгадывает');
  int compNumber2 = Random().nextInt(max - min) + min;
  print(
      'Компьютер загадал число $compNumber2'); // написал чтобы чтобы проверить , но можно убрать
  print('Введите ваше число:');
  int myNumber = 0;
  int count2 = 0;

  while (myNumber != compNumber2) {
    count2++;
    print(
        'I guessed the number ${myNumber = int.parse(stdin.readLineSync()!)}');
    if (myNumber > compNumber2) {
      print('Число компьютера Меньше');
      print('Введите число снова');
    } else if (myNumber < compNumber2) {
      print('Число компьютера Больше');
      print('Ввидите число снова');
    }
  }
  print('Да, все верно');
  print('Вы угадали число компьютера за $count шага(ов)');

  if (count > count2) {
    print('В первом раунде победил пользователь');
  } else if (count2 > count) {
    print('В первом раунде победил компьютер');
  } else {
    print('В первом раунде ничья');
  }
}

secondRound() {
  print('Начнем 2-ой раунд');
  print('Пользователь загадывает число, а компьютер отгадывает');
  int min = 1;
  int max = 100;
  int count3 = 0;
  int compNumber = (min + max) ~/ 2;
  String myInput = '';

  while (myInput != 'yes') {
    count3++;
    compNumber = (min + max) ~/ 2;
    print('Is it $compNumber ?');
    myInput = stdin.readLineSync()!.toLowerCase();

    if (myInput == 'greater') {
      min = compNumber + 1;
    } else if (myInput == 'less') {
      max = compNumber - 1;
    }
  }
  print('Компьютер угадал число пользователя за $count3 шага(ов)');
 

  print('2-ой этап');
  print('Теперь компьютер загадывает число, а пользователь отгадывает');
  int compNumber2 = Random().nextInt(max - min) + min;
  print(
      'Компьютер загадал число $compNumber2'); // написал чтобы чтобы проверить , но можно убрать
  int myNumber = 0;
  int count4 = 0;

  while (myNumber != compNumber2) {
    count4++;
    print(
        'I guessed the number ${myNumber = int.parse(stdin.readLineSync()!)}');
    if (myNumber > compNumber2) {
      print('Число компьютера Меньше');
      print('Введите число снова');
    } else if (myNumber < compNumber2) {
      print('Число компьютера Больше');
      print('Ввидите число снова');
    }
  }
  print('Да, все верно');
  print('Вы угадали число компьютера за $count4 шага(ов)');

  if (count3 > count4) {
    print('Во втором раунде победил пользователь');
  } else if (count4 > count3) {
    print('Во втором раунде победил компьютер');
  } else {
    print('Во втором раунде ничья');
  }
}

thirdRound() {
  print('Начнем решающий 3-ий раунд');
  print('Пользователь загадывает число, а компьютер отгадывает');
  int min = 1;
  int max = 100;
  int count4 = 0;
  int compNumber = (min + max) ~/ 2;
  String myInput = '';

  while (myInput != 'yes') {
    count4++;
    compNumber = (min + max) ~/ 2;
    print('Is it $compNumber ?');
    myInput = stdin.readLineSync()!.toLowerCase();

    if (myInput == 'greater') {
      min = compNumber + 1;
    } else if (myInput == 'less') {
      max = compNumber - 1;
    }
  }
  print('Компьютер угадал число пользователя за $count4 шага(ов)');

  print('2-ой этап');
  print('Теперь компьютер загадывает число, а пользователь отгадывает');
  int compNumber2 = Random().nextInt(max - min) + min;
  print(
      'Компьютер загадал число $compNumber2'); // написал чтобы чтобы проверить , но можно убрать
  int myNumber = 0;
  int count5 = 0;

  while (myNumber != compNumber2) {
    count5++;
    print(
        'I guessed the number ${myNumber = int.parse(stdin.readLineSync()!)}');
    if (myNumber > compNumber2) {
      print('Число компьютера Меньше');
      print('Введите число снова');
    } else if (myNumber < compNumber2) {
      print('Число компьютера Больше');
      print('Ввидите число снова');
    }
  }
  print('Да, все верно');
  print('Вы угадали число компьютера за $count5 шага(ов)');

  if (count4 > count5) {
    print('В третьем раунде победил пользователь');
  } else if (count5 > count4) {
    print('В третьем раунде победил компьютер');
  } else {
    print('В третьем раунде ничья');
  }
}
