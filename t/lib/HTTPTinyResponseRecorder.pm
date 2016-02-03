package HTTPTinyResponseRecorder;
  use Moose;
  extends 'Paws::Net::Caller';
  with 'TestResponseRecorder';

1;
