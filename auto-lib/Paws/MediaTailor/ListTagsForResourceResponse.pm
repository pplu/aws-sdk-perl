
package Paws::MediaTailor::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaTailor::Types qw/MediaTailor___mapOf__string/;
  has Tags => (is => 'ro', isa => MediaTailor___mapOf__string);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'types' => {
               'Tags' => {
                           'class' => 'Paws::MediaTailor::__mapOf__string',
                           'type' => 'MediaTailor___mapOf__string'
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

Paws::MediaTailor::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => MediaTailor___mapOf__string

A comma-separated list of tag key:value pairs. For example: { "Key1":
"Value1", "Key2": "Value2" }


=head2 _request_id => Str


=cut

