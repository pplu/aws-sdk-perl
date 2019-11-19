# Generated from json/callresult_class.tt

package Paws::CognitoIdp::ForgotPasswordResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_CodeDeliveryDetailsType/;
  has CodeDeliveryDetails => (is => 'ro', isa => CognitoIdp_CodeDeliveryDetailsType);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CodeDeliveryDetails' => {
                                          'type' => 'CognitoIdp_CodeDeliveryDetailsType',
                                          'class' => 'Paws::CognitoIdp::CodeDeliveryDetailsType'
                                        }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ForgotPasswordResponse

=head1 ATTRIBUTES


=head2 CodeDeliveryDetails => CognitoIdp_CodeDeliveryDetailsType

The code delivery details returned by the server in response to the
request to reset a password.


=head2 _request_id => Str


=cut

1;