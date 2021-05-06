
package Paws::IoT1ClickDevices::ListTagsForResourceResponse;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::IoT1ClickDevices::__mapOf__string', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT1ClickDevices::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 Tags => L<Paws::IoT1ClickDevices::__mapOf__string>

A collection of key/value pairs defining the resource tags. For
example, { "tags": {"key1": "value1", "key2": "value2"} }. For more
information, see AWS Tagging Strategies
(https://aws.amazon.com/answers/account-management/aws-tagging-strategies/).


=head2 _request_id => Str


=cut

