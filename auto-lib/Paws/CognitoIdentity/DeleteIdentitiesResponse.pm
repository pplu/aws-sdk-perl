# Generated from json/callresult_class.tt

package Paws::CognitoIdentity::DeleteIdentitiesResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CognitoIdentity::Types qw/CognitoIdentity_UnprocessedIdentityId/;
  has UnprocessedIdentityIds => (is => 'ro', isa => ArrayRef[CognitoIdentity_UnprocessedIdentityId]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UnprocessedIdentityIds' => {
                                             'class' => 'Paws::CognitoIdentity::UnprocessedIdentityId',
                                             'type' => 'ArrayRef[CognitoIdentity_UnprocessedIdentityId]'
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

Paws::CognitoIdentity::DeleteIdentitiesResponse

=head1 ATTRIBUTES


=head2 UnprocessedIdentityIds => ArrayRef[CognitoIdentity_UnprocessedIdentityId]

An array of UnprocessedIdentityId objects, each of which contains an
ErrorCode and IdentityId.


=head2 _request_id => Str


=cut

1;