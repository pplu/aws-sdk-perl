
package Paws::IoT1ClickProjects::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT1ClickProjects::Types qw/IoT1ClickProjects_TagMap/;
  has Tags => (is => 'ro', isa => IoT1ClickProjects_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::IoT1ClickProjects::TagMap',
                           'type' => 'IoT1ClickProjects_TagMap'
                         }
             },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickProjects::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => IoT1ClickProjects_TagMap

The tags (metadata key/value pairs) which you have assigned to the
resource.


=head2 _request_id => Str


=cut

