
package Paws::CloudDirectory::GetObjectAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::AttributeKeyAndValue]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::GetObjectAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::CloudDirectory::AttributeKeyAndValue>]

The attributes that are associated with the object.


=head2 _request_id => Str


=cut

