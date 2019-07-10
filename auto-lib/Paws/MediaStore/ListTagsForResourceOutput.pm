
package Paws::MediaStore::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::MediaStore::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MediaStore::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::MediaStore::Tag>]

An array of key:value pairs that are assigned to the container.


=head2 _request_id => Str


=cut

1;