
package Paws::RAM::ListResourceTypesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Paws::RAM::ServiceNameAndResourceType]', traits => ['NameInRequest'], request_name => 'resourceTypes');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ListResourceTypesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 ResourceTypes => ArrayRef[L<Paws::RAM::ServiceNameAndResourceType>]

The shareable resource types supported by AWS RAM.


=head2 _request_id => Str


=cut

