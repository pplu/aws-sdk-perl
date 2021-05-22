
package Paws::ECR::PutRegistryPolicyResponse;
  use Moose;
  has PolicyText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyText' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::PutRegistryPolicyResponse

=head1 ATTRIBUTES


=head2 PolicyText => Str

The JSON policy text for your registry.


=head2 RegistryId => Str

The registry ID.


=head2 _request_id => Str


=cut

1;