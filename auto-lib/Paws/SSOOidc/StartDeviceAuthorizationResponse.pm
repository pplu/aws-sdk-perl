
package Paws::SSOOidc::StartDeviceAuthorizationResponse;
  use Moo;
  use Types::Standard qw/Str Int/;
  use Paws::SSOOidc::Types qw//;
  has DeviceCode => (is => 'ro', isa => Str);
  has ExpiresIn => (is => 'ro', isa => Int);
  has Interval => (is => 'ro', isa => Int);
  has UserCode => (is => 'ro', isa => Str);
  has VerificationUri => (is => 'ro', isa => Str);
  has VerificationUriComplete => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DeviceCode' => 'deviceCode',
                       'Interval' => 'interval',
                       'VerificationUri' => 'verificationUri',
                       'ExpiresIn' => 'expiresIn',
                       'VerificationUriComplete' => 'verificationUriComplete',
                       'UserCode' => 'userCode'
                     },
  'types' => {
               'ExpiresIn' => {
                                'type' => 'Int'
                              },
               'VerificationUri' => {
                                      'type' => 'Str'
                                    },
               'Interval' => {
                               'type' => 'Int'
                             },
               'DeviceCode' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'VerificationUriComplete' => {
                                              'type' => 'Str'
                                            },
               'UserCode' => {
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

Paws::SSOOidc::StartDeviceAuthorizationResponse

=head1 ATTRIBUTES


=head2 DeviceCode => Str

The short-lived code that is used by the device when polling for a
session token.


=head2 ExpiresIn => Int

Indicates the number of seconds in which the verification code will
become invalid.


=head2 Interval => Int

Indicates the number of seconds the client must wait between attempts
when polling for a session.


=head2 UserCode => Str

A one-time user verification code. This is needed to authorize an
in-use device.


=head2 VerificationUri => Str

The URI of the verification page that takes the C<userCode> to
authorize the device.


=head2 VerificationUriComplete => Str

An alternate URL that the client can use to automatically launch a
browser. This process skips the manual step in which the user visits
the verification page and enters their code.


=head2 _request_id => Str


=cut

