
package Paws::CloudDirectory::AttachObjectResponse;
  use Moose;
  has AttachedObjectIdentifier => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::AttachObjectResponse

=head1 ATTRIBUTES


=head2 AttachedObjectIdentifier => Str

The attached C<ObjectIdentifier>, which is the child
C<ObjectIdentifier>.


=head2 _request_id => Str


=cut

