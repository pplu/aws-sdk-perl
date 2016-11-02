
package Paws::SSM::ListTagsForResourceResult;
  use Moose;
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::ListTagsForResourceResult

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[L<Paws::SSM::Tag>]

A list of tags.


=head2 _request_id => Str


=cut

1;