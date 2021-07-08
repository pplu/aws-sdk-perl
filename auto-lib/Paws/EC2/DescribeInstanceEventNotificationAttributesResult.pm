
package Paws::EC2::DescribeInstanceEventNotificationAttributesResult;
  use Moose;
  has InstanceTagAttribute => (is => 'ro', isa => 'Paws::EC2::InstanceTagNotificationAttribute', request_name => 'instanceTagAttribute', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeInstanceEventNotificationAttributesResult

=head1 ATTRIBUTES


=head2 InstanceTagAttribute => L<Paws::EC2::InstanceTagNotificationAttribute>

Information about the registered tag keys.


=head2 _request_id => Str


=cut

