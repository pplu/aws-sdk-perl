
package Paws::IoT1ClickDevices::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT1ClickDevices::Types qw/IoT1ClickDevices___mapOf__string/;
  has Tags => (is => 'ro', isa => IoT1ClickDevices___mapOf__string);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::IoT1ClickDevices::__mapOf__string',
                           'type' => 'IoT1ClickDevices___mapOf__string'
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

Paws::IoT1ClickDevices::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => IoT1ClickDevices___mapOf__string

A collection of key/value pairs defining the resource tags. For
example, { "tags": {"key1": "value1", "key2": "value2"} }. For more
information, see AWS Tagging Strategies
(https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).


=head2 _request_id => Str


=cut

