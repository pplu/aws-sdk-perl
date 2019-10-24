# Generated from json/callresult_class.tt

package Paws::CognitoIdp::ResendConfirmationCodeResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_CodeDeliveryDetailsType/;
  has CodeDeliveryDetails => (is => 'ro', isa => CognitoIdp_CodeDeliveryDetailsType);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CodeDeliveryDetails' => {
                                          'class' => 'Paws::CognitoIdp::CodeDeliveryDetailsType',
                                          'type' => 'CognitoIdp_CodeDeliveryDetailsType'
                                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ResendConfirmationCodeResponse

=head1 ATTRIBUTES


=head2 CodeDeliveryDetails => CognitoIdp_CodeDeliveryDetailsType

The code delivery details returned by the server in response to the
request to resend the confirmation code.


=head2 _request_id => Str


=cut

1;