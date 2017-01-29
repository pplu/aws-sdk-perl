
package Paws::CloudDirectory::UpdateObjectAttributesResponse;
  use Moose;
  has ObjectIdentifier => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::UpdateObjectAttributesResponse

=head1 ATTRIBUTES


=head2 ObjectIdentifier => Str

ObjectIdentifier of the updated object.


=head2 _request_id => Str


=cut

