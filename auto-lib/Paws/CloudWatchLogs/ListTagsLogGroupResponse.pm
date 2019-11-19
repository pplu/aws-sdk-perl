# Generated from json/callresult_class.tt

package Paws::CloudWatchLogs::ListTagsLogGroupResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudWatchLogs::Types qw/CloudWatchLogs_Tags/;
  has Tags => (is => 'ro', isa => CloudWatchLogs_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'types' => {
               'Tags' => {
                           'class' => 'Paws::CloudWatchLogs::Tags',
                           'type' => 'CloudWatchLogs_Tags'
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

Paws::CloudWatchLogs::ListTagsLogGroupResponse

=head1 ATTRIBUTES


=head2 Tags => CloudWatchLogs_Tags

The tags for the log group.


=head2 _request_id => Str


=cut

1;