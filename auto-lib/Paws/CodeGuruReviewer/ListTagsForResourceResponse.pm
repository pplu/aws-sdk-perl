
package Paws::CodeGuruReviewer::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::CodeGuruReviewer::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruReviewer::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::CodeGuruReviewer::TagMap>

An array of key-value pairs used to tag an associated repository. A tag
is a custom attribute label with two parts:

=over

=item *

A I<tag key> (for example, C<CostCenter>, C<Environment>, C<Project>,
or C<Secret>). Tag keys are case sensitive.

=item *

An optional field known as a I<tag value> (for example,
C<111122223333>, C<Production>, or a team name). Omitting the tag value
is the same as using an empty string. Like tag keys, tag values are
case sensitive.

=back



=head2 _request_id => Str


=cut

