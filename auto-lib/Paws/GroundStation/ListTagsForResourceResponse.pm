
package Paws::GroundStation::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GroundStation::Types qw/GroundStation_TagsMap/;
  has Tags => (is => 'ro', isa => GroundStation_TagsMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'class' => 'Paws::GroundStation::TagsMap',
                           'type' => 'GroundStation_TagsMap'
                         },
               '_request_id' => {
                                  'type' => 'Str'
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

Paws::GroundStation::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => GroundStation_TagsMap

Tags assigned to a resource.


=head2 _request_id => Str


=cut

