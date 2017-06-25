
package Paws::DAX::ListTagsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::DAX::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DAX::ListTagsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If this value is present, there are additional results to be displayed.
To retrieve them, call C<ListTags> again, with C<NextToken> set to this
value.


=head2 Tags => ArrayRef[L<Paws::DAX::Tag>]

A list of tags currently associated with the DAX cluster.


=head2 _request_id => Str


=cut

1;