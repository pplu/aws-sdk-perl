# Generated from callresult_class.tt

package Paws::IAM::UpdateSAMLProviderResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw//;
  has SAMLProviderArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SAMLProviderArn' => {
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

Paws::IAM::UpdateSAMLProviderResponse

=head1 ATTRIBUTES


=head2 SAMLProviderArn => Str

The Amazon Resource Name (ARN) of the SAML provider that was updated.


=head2 _request_id => Str


=cut

