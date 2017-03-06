
package Paws::GameLift::DescribeFleetPortSettingsOutput;
  use Moose;
  has InboundPermissions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::IpPermission]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetPortSettingsOutput

=head1 ATTRIBUTES


=head2 InboundPermissions => ArrayRef[L<Paws::GameLift::IpPermission>]

Object that contains port settings for the requested fleet ID.


=head2 _request_id => Str


=cut

1;