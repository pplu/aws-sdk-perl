# Generated from json/callresult_class.tt

package Paws::CognitoIdp::ListIdentityProvidersResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_ProviderDescription/;
  has NextToken => (is => 'ro', isa => Str);
  has Providers => (is => 'ro', isa => ArrayRef[CognitoIdp_ProviderDescription], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Providers' => {
                                'class' => 'Paws::CognitoIdp::ProviderDescription',
                                'type' => 'ArrayRef[CognitoIdp_ProviderDescription]'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'Providers' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListIdentityProvidersResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token.


=head2 B<REQUIRED> Providers => ArrayRef[CognitoIdp_ProviderDescription]

A list of identity provider objects.


=head2 _request_id => Str


=cut

1;