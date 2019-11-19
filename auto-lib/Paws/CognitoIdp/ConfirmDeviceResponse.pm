# Generated from json/callresult_class.tt

package Paws::CognitoIdp::ConfirmDeviceResponse;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::CognitoIdp::Types qw//;
  has UserConfirmationNecessary => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UserConfirmationNecessary' => {
                                                'type' => 'Bool'
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

Paws::CognitoIdp::ConfirmDeviceResponse

=head1 ATTRIBUTES


=head2 UserConfirmationNecessary => Bool

Indicates whether the user confirmation is necessary to confirm the
device response.


=head2 _request_id => Str


=cut

1;