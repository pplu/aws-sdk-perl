
package Paws::ECR::StartLifecyclePolicyPreviewResponse;
  use Moose;
  has LifecyclePolicyText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecyclePolicyText' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::StartLifecyclePolicyPreviewResponse

=head1 ATTRIBUTES


=head2 LifecyclePolicyText => Str

The JSON repository policy text.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryName => Str

The repository name associated with the request.


=head2 Status => Str

The status of the lifecycle policy preview request.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETE">, C<"EXPIRED">, C<"FAILED">
=head2 _request_id => Str


=cut

1;