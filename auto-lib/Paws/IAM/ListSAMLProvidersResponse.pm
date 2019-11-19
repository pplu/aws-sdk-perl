# Generated from callresult_class.tt

package Paws::IAM::ListSAMLProvidersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IAM::Types qw/IAM_SAMLProviderListEntry/;
  has SAMLProviderList => (is => 'ro', isa => ArrayRef[IAM_SAMLProviderListEntry]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'SAMLProviderList' => {
                                       'class' => 'Paws::IAM::SAMLProviderListEntry',
                                       'type' => 'ArrayRef[IAM_SAMLProviderListEntry]'
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

Paws::IAM::ListSAMLProvidersResponse

=head1 ATTRIBUTES


=head2 SAMLProviderList => ArrayRef[IAM_SAMLProviderListEntry]

The list of SAML provider resource objects defined in IAM for this AWS
account.


=head2 _request_id => Str


=cut

