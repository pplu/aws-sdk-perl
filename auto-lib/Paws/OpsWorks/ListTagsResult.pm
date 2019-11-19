# Generated from json/callresult_class.tt

package Paws::OpsWorks::ListTagsResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorks::Types qw/OpsWorks_Tags/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => OpsWorks_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'OpsWorks_Tags',
                           'class' => 'Paws::OpsWorks::Tags'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::ListTagsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If a paginated request does not return all of the remaining results,
this parameter is set to a token that you can assign to the request
object's C<NextToken> parameter to get the next set of results. If the
previous paginated request returned all of the remaining results, this
parameter is set to C<null>.


=head2 Tags => OpsWorks_Tags

A set of key-value pairs that contain tag keys and tag values that are
attached to a stack or layer.


=head2 _request_id => Str


=cut

1;