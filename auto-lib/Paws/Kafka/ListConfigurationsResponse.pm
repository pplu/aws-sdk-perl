
package Paws::Kafka::ListConfigurationsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Kafka::Types qw/Kafka_Configuration/;
  has Configurations => (is => 'ro', isa => ArrayRef[Kafka_Configuration]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Configurations' => 'configurations',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Configurations' => {
                                     'class' => 'Paws::Kafka::Configuration',
                                     'type' => 'ArrayRef[Kafka_Configuration]'
                                   }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListConfigurationsResponse

=head1 ATTRIBUTES


=head2 Configurations => ArrayRef[Kafka_Configuration]

An array of MSK configurations.


=head2 NextToken => Str

The paginated results marker. When the result of a ListConfigurations
operation is truncated, the call returns NextToken in the response. To
get another batch of configurations, provide this token in your next
request.


=head2 _request_id => Str


=cut

