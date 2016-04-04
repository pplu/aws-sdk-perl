
package Paws::DMS::ListTagsForResourceResponse;
  use Moose;
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Tag]');


### main pod documentation begin ###

=head1 NAME

Paws::DMS::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[L<Paws::DMS::Tag>]

A list of tags for the resource.




=cut

1;