
package Paws::WorkDocs::DescribeCommentsResponse;
  use Moose;
  has Comments => (is => 'ro', isa => 'ArrayRef[Paws::WorkDocs::Comment]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DescribeCommentsResponse

=head1 ATTRIBUTES


=head2 Comments => ArrayRef[L<Paws::WorkDocs::Comment>]

The list of comments for the specified document version.


=head2 Marker => Str

The marker for the next set of results. This marker was received from a
previous call.


=head2 _request_id => Str


=cut

