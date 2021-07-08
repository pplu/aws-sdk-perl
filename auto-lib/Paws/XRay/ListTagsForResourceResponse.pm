
package Paws::XRay::ListTagsForResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::XRay::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token. If multiple pages of results are returned, use the
C<NextToken> value returned with the current page of results to get the
next page of results.


=head2 Tags => ArrayRef[L<Paws::XRay::Tag>]

A list of tags, as key and value pairs, that is associated with the
specified X-Ray group or sampling rule.


=head2 _request_id => Str


=cut

