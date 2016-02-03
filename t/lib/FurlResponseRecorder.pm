package FurlResponseRecorder;
  use Moose;
  extends 'Paws::Net::FurlCaller';
  with 'TestResponseRecorder';

1;
