# Generated from callresult_class.tt

package Paws::IAM::CreateSAMLProviderResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw//;
  has SAMLProviderArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SAMLProviderArn' => {
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
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateSAMLProviderResponse

=head1 ATTRIBUTES


=head2 SAMLProviderArn => Str

The Amazon Resource Name (ARN) of the new SAML provider resource in
IAM.


=head2 _request_id => Str


=cut

