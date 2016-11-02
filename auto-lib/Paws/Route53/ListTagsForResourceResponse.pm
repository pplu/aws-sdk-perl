
package Paws::Route53::ListTagsForResourceResponse;
  use Moose;
  has ResourceTagSet => (is => 'ro', isa => 'Paws::Route53::ResourceTagSet', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceTagSet => L<Paws::Route53::ResourceTagSet>

A C<ResourceTagSet> containing tags associated with the specified
resource.




=cut

