
package Paws::DirectConnect::DescribeTagsResponse;
  use Moose;
  has ResourceTags => (is => 'ro', isa => 'ArrayRef[Paws::DirectConnect::ResourceTag]', traits => ['Unwrapped'], xmlname => 'resourceTags' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::DescribeTagsResponse

=head1 ATTRIBUTES


=head2 ResourceTags => ArrayRef[L<Paws::DirectConnect::ResourceTag>]

Information about the tags.


=head2 _request_id => Str


=cut

1;