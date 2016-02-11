
package Paws::GameLift::DescribeFleetPortSettingsOutput;
  use Moose;
  has InboundPermissions => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::IpPermission]');


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetPortSettingsOutput

=head1 ATTRIBUTES


=head2 InboundPermissions => ArrayRef[L<Paws::GameLift::IpPermission>]

Object containing port settings for the requested fleet ID.




=cut

1;