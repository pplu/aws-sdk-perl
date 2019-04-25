
package Paws::FSX::ListTagsForResourceResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::FSX::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FSX::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

This is present if there are more tags than returned in the response
(String). You can use the C<NextToken> value in the later request to
fetch the tags.


=head2 Tags => ArrayRef[L<Paws::FSX::Tag>]

A list of tags on the resource.


=head2 _request_id => Str


=cut

1;