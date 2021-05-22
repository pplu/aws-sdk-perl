
package Paws::Chime::ListMeetingTagsResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Chime::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::ListMeetingTagsResponse

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::Chime::Tag>]

A list of tag key-value pairs.


=head2 _request_id => Str


=cut

