
package Paws::QLDB::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::QLDB::Tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QLDB::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::QLDB::Tags>

The tags that are currently associated with the specified Amazon QLDB
resource.


=head2 _request_id => Str


=cut

