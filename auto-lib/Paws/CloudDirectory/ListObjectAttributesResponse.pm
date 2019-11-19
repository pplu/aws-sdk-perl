
package Paws::CloudDirectory::ListObjectAttributesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_AttributeKeyAndValue/;
  has Attributes => (is => 'ro', isa => ArrayRef[CloudDirectory_AttributeKeyAndValue]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Attributes' => {
                                 'class' => 'Paws::CloudDirectory::AttributeKeyAndValue',
                                 'type' => 'ArrayRef[CloudDirectory_AttributeKeyAndValue]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListObjectAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[CloudDirectory_AttributeKeyAndValue]

Attributes map that is associated with the object. C<AttributeArn> is
the key, and attribute value is the value.


=head2 NextToken => Str

The pagination token.


=head2 _request_id => Str


=cut

