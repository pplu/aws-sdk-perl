
package Paws::ECR::DeleteRegistryPolicyResponse;
  use Moose;
  has PolicyText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyText' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DeleteRegistryPolicyResponse

=head1 ATTRIBUTES


=head2 PolicyText => Str

The contents of the registry permissions policy that was deleted.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 _request_id => Str


=cut

1;