
package Paws::GameLift::DescribeVpcPeeringAuthorizationsOutput;
  use Moose;
  has VpcPeeringAuthorizations => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::VpcPeeringAuthorization]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeVpcPeeringAuthorizationsOutput

=head1 ATTRIBUTES


=head2 VpcPeeringAuthorizations => ArrayRef[L<Paws::GameLift::VpcPeeringAuthorization>]

Collection of objects that describe all valid VPC peering operations
for the current AWS account.


=head2 _request_id => Str


=cut

1;