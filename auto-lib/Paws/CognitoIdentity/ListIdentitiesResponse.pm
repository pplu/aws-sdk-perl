# Generated from json/callresult_class.tt

package Paws::CognitoIdentity::ListIdentitiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CognitoIdentity::Types qw/CognitoIdentity_IdentityDescription/;
  has Identities => (is => 'ro', isa => ArrayRef[CognitoIdentity_IdentityDescription]);
  has IdentityPoolId => (is => 'ro', isa => Str);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Identities' => {
                                 'class' => 'Paws::CognitoIdentity::IdentityDescription',
                                 'type' => 'ArrayRef[CognitoIdentity_IdentityDescription]'
                               },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IdentityPoolId' => {
                                     'type' => 'Str'
                                   }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::ListIdentitiesResponse

=head1 ATTRIBUTES


=head2 Identities => ArrayRef[CognitoIdentity_IdentityDescription]

An object containing a set of identities and associated mappings.


=head2 IdentityPoolId => Str

An identity pool ID in the format REGION:GUID.


=head2 NextToken => Str

A pagination token.


=head2 _request_id => Str


=cut

1;