
package Paws::RAM::ListResourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::RAM::Resource]', traits => ['NameInRequest'], request_name => 'resources');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ListResourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 Resources => ArrayRef[L<Paws::RAM::Resource>]

Information about the resources.


=head2 _request_id => Str


=cut

