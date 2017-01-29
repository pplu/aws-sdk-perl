
package Paws::CloudDirectory::CreateIndexResponse;
  use Moose;
  has ObjectIdentifier => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::CreateIndexResponse

=head1 ATTRIBUTES


=head2 ObjectIdentifier => Str

The ObjectIdentifier of the index created by this operation.


=head2 _request_id => Str


=cut

