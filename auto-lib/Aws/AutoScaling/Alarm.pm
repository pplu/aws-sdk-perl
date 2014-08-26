package Aws::AutoScaling::Alarm {
  use Moose;
  with ('AWS::API::ResultParser');
  has AlarmARN => (is => 'ro', isa => 'Str');
  has AlarmName => (is => 'ro', isa => 'Str');
}
1
