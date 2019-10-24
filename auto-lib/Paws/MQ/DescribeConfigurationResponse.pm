
package Paws::MQ::DescribeConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MQ::Types qw/MQ___mapOf__string MQ_ConfigurationRevision/;
  has Arn => (is => 'ro', isa => Str);
  has Created => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has EngineType => (is => 'ro', isa => Str);
  has EngineVersion => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has LatestRevision => (is => 'ro', isa => MQ_ConfigurationRevision);
  has Name => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => MQ___mapOf__string);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'EngineVersion' => {
                                    'type' => 'Str'
                                  },
               'Id' => {
                         'type' => 'Str'
                       },
               'EngineType' => {
                                 'type' => 'Str'
                               },
               'LatestRevision' => {
                                     'class' => 'Paws::MQ::ConfigurationRevision',
                                     'type' => 'MQ_ConfigurationRevision'
                                   },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Created' => {
                              'type' => 'Str'
                            },
               'Tags' => {
                           'class' => 'Paws::MQ::__mapOf__string',
                           'type' => 'MQ___mapOf__string'
                         },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'EngineVersion' => 'engineVersion',
                       'Id' => 'id',
                       'EngineType' => 'engineType',
                       'LatestRevision' => 'latestRevision',
                       'Arn' => 'arn',
                       'Created' => 'created',
                       'Tags' => 'tags',
                       'Description' => 'description',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::DescribeConfigurationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Required. The ARN of the configuration.


=head2 Created => Str

Required. The date and time of the configuration revision.


=head2 Description => Str

Required. The description of the configuration.


=head2 EngineType => Str

Required. The type of broker engine. Note: Currently, Amazon MQ
supports only ACTIVEMQ.

Valid values are: C<"ACTIVEMQ">
=head2 EngineVersion => Str

Required. The version of the broker engine. For a list of supported
engine versions, see
https://docs.aws.amazon.com/amazon-mq/latest/developer-guide/broker-engine.html


=head2 Id => Str

Required. The unique ID that Amazon MQ generates for the configuration.


=head2 LatestRevision => MQ_ConfigurationRevision

Required. The latest revision of the configuration.


=head2 Name => Str

Required. The name of the configuration. This value can contain only
alphanumeric characters, dashes, periods, underscores, and tildes (- .
_ ~). This value must be 1-150 characters long.


=head2 Tags => MQ___mapOf__string

The list of all tags associated with this configuration.


=head2 _request_id => Str


=cut

