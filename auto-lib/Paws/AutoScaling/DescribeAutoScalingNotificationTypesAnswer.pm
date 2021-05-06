
package Paws::AutoScaling::DescribeAutoScalingNotificationTypesAnswer;
  use Moose;
  has AutoScalingNotificationTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeAutoScalingNotificationTypesAnswer

=head1 ATTRIBUTES


=head2 AutoScalingNotificationTypes => ArrayRef[Str|Undef]

The notification types.


=head2 _request_id => Str


=cut

