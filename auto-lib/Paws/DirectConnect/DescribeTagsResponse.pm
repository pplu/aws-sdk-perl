
package Paws::DirectConnect::DescribeTagsResponse;
  use Moose;
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::ResourceTag]', traits => ['Unwrapped'], xmlname => 'resourceTags' );


### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeTagsResponse

=head1 ATTRIBUTES


=head2 ResourceTags => ArrayRef[L<Paws::DirectConnect::ResourceTag>]

Information about the tags.




=cut

1;