
package Paws::ECR::GetRegistryPolicyResponse;
  use Moose;
  has PolicyText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyText' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::GetRegistryPolicyResponse

=head1 ATTRIBUTES


=head2 PolicyText => Str

The JSON text of the permissions policy for a registry.


=head2 RegistryId => Str

The ID of the registry.


=head2 _request_id => Str


=cut

1;