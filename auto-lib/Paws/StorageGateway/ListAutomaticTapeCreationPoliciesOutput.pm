
package Paws::StorageGateway::ListAutomaticTapeCreationPoliciesOutput;
  use Moose;
  has AutomaticTapeCreationPolicyInfos => (is => 'ro', isa => 'ArrayRef[Paws::StorageGateway::AutomaticTapeCreationPolicyInfo]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListAutomaticTapeCreationPoliciesOutput

=head1 ATTRIBUTES


=head2 AutomaticTapeCreationPolicyInfos => ArrayRef[L<Paws::StorageGateway::AutomaticTapeCreationPolicyInfo>]

Gets a listing of information about the gateway's automatic tape
creation policies, including the automatic tape creation rules and the
gateway that is using the policies.


=head2 _request_id => Str


=cut

1;