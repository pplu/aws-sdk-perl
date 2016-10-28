
package Paws::Route53::ListTagsForResourcesResponse;
  use Moose;
  has ResourceTagSets => (is => 'ro', isa => 'ArrayRef[Paws::Route53::ResourceTagSet]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListTagsForResourcesResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceTagSets => ArrayRef[L<Paws::Route53::ResourceTagSet>]

A list of C<ResourceTagSet>s containing tags associated with the
specified resources.




=cut

