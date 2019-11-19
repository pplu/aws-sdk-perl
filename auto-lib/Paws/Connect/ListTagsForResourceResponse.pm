
package Paws::Connect::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Connect::Types qw/Connect_TagMap/;
  has Tags => (is => 'ro', isa => Connect_TagMap);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'Connect_TagMap',
                           'class' => 'Paws::Connect::TagMap'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => Connect_TagMap

Information about the tags.


=head2 _request_id => Str


=cut

