# Generated from json/callresult_class.tt

package Paws::CognitoIdp::GetSigningCertificateResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw//;
  has Certificate => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Certificate' => {
                                  'type' => 'Str'
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

Paws::CognitoIdp::GetSigningCertificateResponse

=head1 ATTRIBUTES


=head2 Certificate => Str

The signing certificate.


=head2 _request_id => Str


=cut

1;