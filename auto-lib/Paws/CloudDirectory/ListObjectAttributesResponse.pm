
package Paws::CloudDirectory::ListObjectAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::AttributeKeyAndValue]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListObjectAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[L<Paws::CloudDirectory::AttributeKeyAndValue>]

Attributes map associated with the object. AttributeArn is the key, and
attribute value is the value.


=head2 NextToken => Str

Token used for pagination.


=head2 _request_id => Str


=cut

