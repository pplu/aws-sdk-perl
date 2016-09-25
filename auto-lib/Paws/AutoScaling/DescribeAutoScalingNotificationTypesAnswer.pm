
package Paws::AutoScaling::DescribeAutoScalingNotificationTypesAnswer;
  use Moose;
  has AutoScalingNotificationTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeAutoScalingNotificationTypesAnswer

=head1 ATTRIBUTES


=head2 AutoScalingNotificationTypes => ArrayRef[Str|Undef]

The notification types.




=cut

