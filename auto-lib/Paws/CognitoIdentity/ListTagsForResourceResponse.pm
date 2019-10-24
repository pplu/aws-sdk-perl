# Generated from json/callresult_class.tt

package Paws::CognitoIdentity::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdentity::Types qw/CognitoIdentity_IdentityPoolTagsType/;
  has Tags => (is => 'ro', isa => CognitoIdentity_IdentityPoolTagsType);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::CognitoIdentity::IdentityPoolTagsType',
                           'type' => 'CognitoIdentity_IdentityPoolTagsType'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdentity::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => CognitoIdentity_IdentityPoolTagsType

The tags that are assigned to the identity pool.


=head2 _request_id => Str


=cut

1;