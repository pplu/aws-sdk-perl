
package Paws::CloudDirectory::GetLinkAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::AttributeKeyAndValue]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::GetLinkAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::CloudDirectory::AttributeKeyAndValue>]

The attributes that are associated with the typed link.


=head2 _request_id => Str


=cut

