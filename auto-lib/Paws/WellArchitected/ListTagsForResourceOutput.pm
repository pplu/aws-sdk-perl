
package Paws::WellArchitected::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::WellArchitected::TagMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => L<Paws::WellArchitected::TagMap>

The tags for the resource.


=head2 _request_id => Str


=cut

