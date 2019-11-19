
package Paws::MQ::ListTagsResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MQ::Types qw/MQ___mapOf__string/;
  has Tags => (is => 'ro', isa => MQ___mapOf__string);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::MQ::__mapOf__string',
                           'type' => 'MQ___mapOf__string'
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

Paws::MQ::ListTagsResponse

=head1 ATTRIBUTES


=head2 Tags => MQ___mapOf__string

The key-value pair for the resource tag.


=head2 _request_id => Str


=cut

