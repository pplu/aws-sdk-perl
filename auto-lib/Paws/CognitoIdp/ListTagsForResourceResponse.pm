# Generated from json/callresult_class.tt

package Paws::CognitoIdp::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CognitoIdp::Types qw/CognitoIdp_UserPoolTagsType/;
  has Tags => (is => 'ro', isa => CognitoIdp_UserPoolTagsType);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::CognitoIdp::UserPoolTagsType',
                           'type' => 'CognitoIdp_UserPoolTagsType'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => CognitoIdp_UserPoolTagsType

The tags that are assigned to the user pool.


=head2 _request_id => Str


=cut

1;