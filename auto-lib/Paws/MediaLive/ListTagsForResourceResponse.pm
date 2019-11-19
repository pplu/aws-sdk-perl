
package Paws::MediaLive::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaLive::Types qw/MediaLive_Tags/;
  has Tags => (is => 'ro', isa => MediaLive_Tags);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'types' => {
               'Tags' => {
                           'class' => 'Paws::MediaLive::Tags',
                           'type' => 'MediaLive_Tags'
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

Paws::MediaLive::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => MediaLive_Tags




=head2 _request_id => Str


=cut

