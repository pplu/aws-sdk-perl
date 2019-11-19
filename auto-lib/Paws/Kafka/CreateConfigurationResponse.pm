
package Paws::Kafka::CreateConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Kafka::Types qw/Kafka_ConfigurationRevision/;
  has Arn => (is => 'ro', isa => Str);
  has CreationTime => (is => 'ro', isa => Str);
  has LatestRevision => (is => 'ro', isa => Kafka_ConfigurationRevision);
  has Name => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Arn' => {
                          'type' => 'Str'
                        },
               'CreationTime' => {
                                   'type' => 'Str'
                                 },
               'LatestRevision' => {
                                     'type' => 'Kafka_ConfigurationRevision',
                                     'class' => 'Paws::Kafka::ConfigurationRevision'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Name' => 'name',
                       'LatestRevision' => 'latestRevision',
                       'CreationTime' => 'creationTime',
                       'Arn' => 'arn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::CreateConfigurationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the configuration.


=head2 CreationTime => Str

The time when the configuration was created.


=head2 LatestRevision => Kafka_ConfigurationRevision

Latest revision of the configuration.


=head2 Name => Str

The name of the configuration.


=head2 _request_id => Str


=cut

