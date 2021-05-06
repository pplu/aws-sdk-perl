
package Paws::ECR::GetLifecyclePolicyResponse;
  use Moose;
  has LastEvaluatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastEvaluatedAt' );
  has LifecyclePolicyText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecyclePolicyText' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::GetLifecyclePolicyResponse

=head1 ATTRIBUTES


=head2 LastEvaluatedAt => Str

The time stamp of the last time that the lifecycle policy was run.


=head2 LifecyclePolicyText => Str

The JSON lifecycle policy text.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryName => Str

The repository name associated with the request.


=head2 _request_id => Str


=cut

1;