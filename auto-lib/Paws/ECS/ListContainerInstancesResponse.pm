
package Paws::ECS::ListContainerInstancesResponse;
  use Moose;
  has ContainerInstanceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'containerInstanceArns' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListContainerInstancesResponse

=head1 ATTRIBUTES


=head2 ContainerInstanceArns => ArrayRef[Str|Undef]

The list of container instances with full ARN entries for each
container instance associated with the specified cluster.


=head2 NextToken => Str

The C<nextToken> value to include in a future C<ListContainerInstances>
request. When the results of a C<ListContainerInstances> request exceed
C<maxResults>, this value can be used to retrieve the next page of
results. This value is C<null> when there are no more results to
return.


=head2 _request_id => Str


=cut

1;