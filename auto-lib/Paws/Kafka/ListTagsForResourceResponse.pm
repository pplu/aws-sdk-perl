
package Paws::Kafka::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Kafka::Types qw/Kafka___mapOf__string/;
  has Tags => (is => 'ro', isa => Kafka___mapOf__string);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::Kafka::__mapOf__string',
                           'type' => 'Kafka___mapOf__string'
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

Paws::Kafka::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => Kafka___mapOf__string

The key-value pair for the resource tag.


=head2 _request_id => Str


=cut

