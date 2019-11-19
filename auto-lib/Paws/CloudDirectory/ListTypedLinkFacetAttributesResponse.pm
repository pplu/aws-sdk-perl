
package Paws::CloudDirectory::ListTypedLinkFacetAttributesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_TypedLinkAttributeDefinition/;
  has Attributes => (is => 'ro', isa => ArrayRef[CloudDirectory_TypedLinkAttributeDefinition]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Attributes' => {
                                 'class' => 'Paws::CloudDirectory::TypedLinkAttributeDefinition',
                                 'type' => 'ArrayRef[CloudDirectory_TypedLinkAttributeDefinition]'
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

Paws::CloudDirectory::ListTypedLinkFacetAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[CloudDirectory_TypedLinkAttributeDefinition]

An ordered set of attributes associate with the typed link.


=head2 NextToken => Str

The pagination token.


=head2 _request_id => Str


=cut

