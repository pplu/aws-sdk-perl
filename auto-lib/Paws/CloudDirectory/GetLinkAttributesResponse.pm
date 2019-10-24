
package Paws::CloudDirectory::GetLinkAttributesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_AttributeKeyAndValue/;
  has Attributes => (is => 'ro', isa => ArrayRef[CloudDirectory_AttributeKeyAndValue]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
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

Paws::CloudDirectory::GetLinkAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[CloudDirectory_AttributeKeyAndValue]

The attributes that are associated with the typed link.


=head2 _request_id => Str


=cut

