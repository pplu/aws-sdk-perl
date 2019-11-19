
package Paws::DataExchange::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::DataExchange::Types qw/DataExchange_MapOf__string/;
  has Tags => (is => 'ro', isa => DataExchange_MapOf__string);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'type' => 'DataExchange_MapOf__string',
                           'class' => 'Paws::DataExchange::MapOf__string'
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

Paws::DataExchange::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => DataExchange_MapOf__string

A label that consists of a customer-defined key and an optional value.


=head2 _request_id => Str


=cut

