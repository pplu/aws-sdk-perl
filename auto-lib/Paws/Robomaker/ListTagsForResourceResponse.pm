
package Paws::Robomaker::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Robomaker::Types qw/Robomaker_TagMap/;
  has Tags => (is => 'ro', isa => Robomaker_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'types' => {
               'Tags' => {
                           'type' => 'Robomaker_TagMap',
                           'class' => 'Paws::Robomaker::TagMap'
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

Paws::Robomaker::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => Robomaker_TagMap

The list of all tags added to the specified resource.


=head2 _request_id => Str


=cut

