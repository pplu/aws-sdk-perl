
package Paws::AppSync::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::AppSync::Types qw/AppSync_TagMap/;
  has Tags => (is => 'ro', isa => AppSync_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'AppSync_TagMap',
                           'class' => 'Paws::AppSync::TagMap'
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

Paws::AppSync::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => AppSync_TagMap

A C<TagMap> object.


=head2 _request_id => Str


=cut

