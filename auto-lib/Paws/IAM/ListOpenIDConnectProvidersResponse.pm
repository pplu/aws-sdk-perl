# Generated from callresult_class.tt

package Paws::IAM::ListOpenIDConnectProvidersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::IAM::Types qw/IAM_OpenIDConnectProviderListEntry/;
  has OpenIDConnectProviderList => (is => 'ro', isa => ArrayRef[IAM_OpenIDConnectProviderListEntry]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'OpenIDConnectProviderList' => {
                                                'class' => 'Paws::IAM::OpenIDConnectProviderListEntry',
                                                'type' => 'ArrayRef[IAM_OpenIDConnectProviderListEntry]'
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

Paws::IAM::ListOpenIDConnectProvidersResponse

=head1 ATTRIBUTES


=head2 OpenIDConnectProviderList => ArrayRef[IAM_OpenIDConnectProviderListEntry]

The list of IAM OIDC provider resource objects defined in the AWS
account.


=head2 _request_id => Str


=cut

