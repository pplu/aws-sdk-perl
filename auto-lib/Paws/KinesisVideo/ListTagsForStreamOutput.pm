
package Paws::KinesisVideo::ListTagsForStreamOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::KinesisVideo::ResourceTags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisVideo::ListTagsForStreamOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If you specify this parameter and the result of a C<ListTags> call is
truncated, the response includes a token that you can use in the next
request to fetch the next set of tags.


=head2 Tags => L<Paws::KinesisVideo::ResourceTags>

A map of tag keys and values associated with the specified stream.


=head2 _request_id => Str


=cut

