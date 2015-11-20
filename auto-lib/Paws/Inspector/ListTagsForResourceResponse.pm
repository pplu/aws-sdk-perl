
package Paws::Inspector::ListTagsForResourceResponse;
  use Moose;
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::Inspector::Tag]', traits => ['Unwrapped'], xmlname => 'tagList' );


### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[L<Paws::Inspector::Tag>]

  A collection of key and value pairs.


=cut

1;