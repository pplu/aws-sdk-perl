
package Paws::MediaConnect::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConnect::Types qw/MediaConnect___mapOf__string/;
  has Tags => (is => 'ro', isa => MediaConnect___mapOf__string);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'MediaConnect___mapOf__string',
                           'class' => 'Paws::MediaConnect::__mapOf__string'
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

Paws::MediaConnect::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => MediaConnect___mapOf__string

A map from tag keys to values. Tag keys can have a maximum character
length of 128 characters, and tag values can have a maximum length of
256 characters.


=head2 _request_id => Str


=cut

