import 'dart:io';

import 'package:flscrcpy/core/process/stream_shell.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:process_run/process_run.dart';

class MockShell extends Mock implements Shell {}

void main() {
  group('StreamShellImpl', () {
    late MockShell mockShell;
    late StreamShellImpl streamShell;

    setUp(() {
      mockShell = MockShell();
      streamShell = StreamShellImpl(shell: mockShell);
    });

    test('should run executes command and updates isRunning state', () async {
      // arrage
      when(() => mockShell.runExecutableArguments(any(), any()))
          .thenAnswer((_) async => ProcessResult(0, 0, '', ''));
      expect(streamShell.isRunning, isFalse);

      // act
      await streamShell.run('echo', ['Hello']);

      // assert
      expect(streamShell.isRunning, isFalse);
      verify(() => mockShell.runExecutableArguments('echo', ['Hello']))
          .called(1);
    });

    test('should run handles exceptions properly', () async {
      // arrage
      when(() => mockShell.runExecutableArguments(any(), any()))
          .thenThrow(ShellException('Some error', null));

      // act & assert
      expect(() => streamShell.run('echo', ['Hello']), throwsException);
    });

    test('should kill sends SIGINT to the shell', () {
      // arrage
      final tProcessSignal = ProcessSignal.sigint;
      when(() => mockShell.kill(tProcessSignal)).thenReturn(true);

      // act
      streamShell.kill();

      // assert
      verify(() => mockShell.kill(tProcessSignal));
    });
  });
}
