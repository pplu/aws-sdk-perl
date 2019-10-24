
package Paws::SecurityHub::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SecurityHub::Types qw/SecurityHub_TagMap/;
  has Tags => (is => 'ro', isa => SecurityHub_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::SecurityHub::TagMap',
                           'type' => 'SecurityHub_TagMap'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => SecurityHub_TagMap

The tags associated with a resource.


=head2 _request_id => Str


=cut

