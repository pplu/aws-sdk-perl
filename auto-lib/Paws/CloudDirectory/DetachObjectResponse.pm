
package Paws::CloudDirectory::DetachObjectResponse;
  use Moose;
  has DetachedObjectIdentifier => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::DetachObjectResponse

=head1 ATTRIBUTES


=head2 DetachedObjectIdentifier => Str

The ObjectIdentifier that was detached from the object.


=head2 _request_id => Str


=cut

