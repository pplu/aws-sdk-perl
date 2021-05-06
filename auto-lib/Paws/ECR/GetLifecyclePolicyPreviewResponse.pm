
package Paws::ECR::GetLifecyclePolicyPreviewResponse;
  use Moose;
  has LifecyclePolicyText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lifecyclePolicyText' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PreviewResults => (is => 'ro', isa => 'ArrayRef[Paws::ECR::LifecyclePolicyPreviewResult]', traits => ['NameInRequest'], request_name => 'previewResults' );
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );
  has Summary => (is => 'ro', isa => 'Paws::ECR::LifecyclePolicyPreviewSummary', traits => ['NameInRequest'], request_name => 'summary' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::GetLifecyclePolicyPreviewResponse

=head1 ATTRIBUTES


=head2 LifecyclePolicyText => Str

The JSON lifecycle policy text.


=head2 NextToken => Str

The C<nextToken> value to include in a future
C<GetLifecyclePolicyPreview> request. When the results of a
C<GetLifecyclePolicyPreview> request exceed C<maxResults>, this value
can be used to retrieve the next page of results. This value is C<null>
when there are no more results to return.


=head2 PreviewResults => ArrayRef[L<Paws::ECR::LifecyclePolicyPreviewResult>]

The results of the lifecycle policy preview request.


=head2 RegistryId => Str

The registry ID associated with the request.


=head2 RepositoryName => Str

The repository name associated with the request.


=head2 Status => Str

The status of the lifecycle policy preview request.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETE">, C<"EXPIRED">, C<"FAILED">
=head2 Summary => L<Paws::ECR::LifecyclePolicyPreviewSummary>

The list of images that is returned as a result of the action.


=head2 _request_id => Str


=cut

1;