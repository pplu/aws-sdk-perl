
package Paws::Inspector::ListTagsForResourceResponse;
  use Moose;
  has tagList => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Tag]');


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListTagsForResourceResponse

=head1 ATTRIBUTES

=head2 tagList => ArrayRef[L<Paws::Inspector::Tag>]

  A collection of key and value pairs.


=cut

1;