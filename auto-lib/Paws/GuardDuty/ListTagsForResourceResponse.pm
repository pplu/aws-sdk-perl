
package Paws::GuardDuty::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GuardDuty::Types qw/GuardDuty_TagMap/;
  has Tags => (is => 'ro', isa => GuardDuty_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'types' => {
               'Tags' => {
                           'type' => 'GuardDuty_TagMap',
                           'class' => 'Paws::GuardDuty::TagMap'
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

Paws::GuardDuty::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => GuardDuty_TagMap

The tags associated with the resource.


=head2 _request_id => Str


=cut

