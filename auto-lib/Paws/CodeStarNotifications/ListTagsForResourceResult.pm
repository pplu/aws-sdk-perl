
package Paws::CodeStarNotifications::ListTagsForResourceResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CodeStarNotifications::Types qw/CodeStarNotifications_Tags/;
  has Tags => (is => 'ro', isa => CodeStarNotifications_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'CodeStarNotifications_Tags',
                           'class' => 'Paws::CodeStarNotifications::Tags'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStarNotifications::ListTagsForResourceResult

=head1 ATTRIBUTES


=head2 Tags => CodeStarNotifications_Tags

The tags associated with the notification rule.


=head2 _request_id => Str


=cut

