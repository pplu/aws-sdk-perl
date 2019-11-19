# Generated from json/callresult_class.tt

package Paws::CognitoIdentity::ListIdentityPoolsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CognitoIdentity::Types qw/CognitoIdentity_IdentityPoolShortDescription/;
  has IdentityPools => (is => 'ro', isa => ArrayRef[CognitoIdentity_IdentityPoolShortDescription]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'IdentityPools' => {
                                    'type' => 'ArrayRef[CognitoIdentity_IdentityPoolShortDescription]',
                                    'class' => 'Paws::CognitoIdentity::IdentityPoolShortDescription'
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

Paws::CognitoIdentity::ListIdentityPoolsResponse

=head1 ATTRIBUTES


=head2 IdentityPools => ArrayRef[CognitoIdentity_IdentityPoolShortDescription]

The identity pools returned by the ListIdentityPools action.


=head2 NextToken => Str

A pagination token.


=head2 _request_id => Str


=cut

1;