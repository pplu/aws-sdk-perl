
package Paws::EC2::ApplySecurityGroupsToClientVpnTargetNetworkResult;
  use Moose;
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroupIds', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ApplySecurityGroupsToClientVpnTargetNetworkResult

=head1 ATTRIBUTES


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the applied security groups.


=head2 _request_id => Str


=cut

