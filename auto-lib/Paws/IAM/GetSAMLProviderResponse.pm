
package Paws::IAM::GetSAMLProviderResponse;
  use Moo;
  use JSON::MaybeXS;
  use URL::Encode;
  use Types::Standard qw/Str/;
  use Paws::IAM::Types qw//;
  has CreateDate => (is => 'ro', isa => Str);
  has SAMLMetadataDocument => (is => 'ro', isa => Str);
  has ValidUntil => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SAMLMetadataDocument' => {
                                           'type' => 'Str'
                                         },
               'CreateDate' => {
                                 'type' => 'Str'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ValidUntil' => {
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

Paws::IAM::GetSAMLProviderResponse

=head1 ATTRIBUTES


=head2 CreateDate => Str

The date and time when the SAML provider was created.


=head2 SAMLMetadataDocument => Str

The XML metadata document that includes information about an identity
provider.


=head2 ValidUntil => Str

The expiration date and time for the SAML provider.


=head2 _request_id => Str


=cut

