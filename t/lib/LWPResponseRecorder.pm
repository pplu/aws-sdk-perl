package LWPResponseRecorder;
  use Moose;
  extends 'Paws::Net::LWPCaller';
  with 'TestResponseRecorder';

1;
