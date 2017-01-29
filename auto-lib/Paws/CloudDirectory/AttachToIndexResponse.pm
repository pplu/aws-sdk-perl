
package Paws::CloudDirectory::AttachToIndexResponse;
  use Moose;
  has AttachedObjectIdentifier => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::AttachToIndexResponse

=head1 ATTRIBUTES


=head2 AttachedObjectIdentifier => Str

The ObjectIdentifier of the object that was attached to the index.


=head2 _request_id => Str


=cut

