# Generated from json/callresult_class.tt

package Paws::CognitoIdp::UpdateUserPoolDomainResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw//;
  has CloudFrontDomain => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'CloudFrontDomain' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::UpdateUserPoolDomainResponse

=head1 ATTRIBUTES


=head2 CloudFrontDomain => Str

The Amazon CloudFront endpoint that Amazon Cognito set up when you
added the custom domain to your user pool.


=head2 _request_id => Str


=cut

1;