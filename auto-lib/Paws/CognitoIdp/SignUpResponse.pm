# Generated from json/callresult_class.tt

package Paws::CognitoIdp::SignUpResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_CodeDeliveryDetailsType/;
  has CodeDeliveryDetails => (is => 'ro', isa => CognitoIdp_CodeDeliveryDetailsType);
  has UserConfirmed => (is => 'ro', isa => Bool, required => 1);
  has UserSub => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CodeDeliveryDetails' => {
                                          'class' => 'Paws::CognitoIdp::CodeDeliveryDetailsType',
                                          'type' => 'CognitoIdp_CodeDeliveryDetailsType'
                                        },
               'UserSub' => {
                              'type' => 'Str'
                            },
               'UserConfirmed' => {
                                    'type' => 'Bool'
                                  }
             },
  'IsRequired' => {
                    'UserSub' => 1,
                    'UserConfirmed' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::SignUpResponse

=head1 ATTRIBUTES


=head2 CodeDeliveryDetails => CognitoIdp_CodeDeliveryDetailsType

The code delivery details returned by the server response to the user
registration request.


=head2 B<REQUIRED> UserConfirmed => Bool

A response from the server indicating that a user registration has been
confirmed.


=head2 B<REQUIRED> UserSub => Str

The UUID of the authenticated user. This is not the same as
C<username>.


=head2 _request_id => Str


=cut

1;