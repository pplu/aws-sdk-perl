# Generated from json/callresult_class.tt

package Paws::CognitoIdp::UpdateUserAttributesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_CodeDeliveryDetailsType/;
  has CodeDeliveryDetailsList => (is => 'ro', isa => ArrayRef[CognitoIdp_CodeDeliveryDetailsType]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CodeDeliveryDetailsList' => {
                                              'class' => 'Paws::CognitoIdp::CodeDeliveryDetailsType',
                                              'type' => 'ArrayRef[CognitoIdp_CodeDeliveryDetailsType]'
                                            }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateUserAttributesResponse

=head1 ATTRIBUTES


=head2 CodeDeliveryDetailsList => ArrayRef[CognitoIdp_CodeDeliveryDetailsType]

The code delivery details list from the server for the request to
update user attributes.


=head2 _request_id => Str


=cut

1;