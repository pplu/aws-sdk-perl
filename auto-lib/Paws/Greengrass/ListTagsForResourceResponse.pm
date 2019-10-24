
package Paws::Greengrass::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw/Greengrass___mapOf__string/;
  has Tags => (is => 'ro', isa => Greengrass___mapOf__string);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::Greengrass::__mapOf__string',
                           'type' => 'Greengrass___mapOf__string'
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

Paws::Greengrass::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => Greengrass___mapOf__string

A map of the key-value pairs for the resource tag.


=head2 _request_id => Str


=cut

