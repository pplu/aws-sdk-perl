
package Paws::GameLift::CreateVpcPeeringAuthorizationOutput;
  use Moose;
  has VpcPeeringAuthorization => (is => 'ro', isa => 'Paws::GameLift::VpcPeeringAuthorization');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateVpcPeeringAuthorizationOutput

=head1 ATTRIBUTES


=head2 VpcPeeringAuthorization => L<Paws::GameLift::VpcPeeringAuthorization>

Details on the requested VPC peering authorization, including
expiration.


=head2 _request_id => Str


=cut

1;