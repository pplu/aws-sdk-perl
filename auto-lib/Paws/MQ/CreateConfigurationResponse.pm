
package Paws::MQ::CreateConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MQ::Types qw/MQ_ConfigurationRevision/;
  has Arn => (is => 'ro', isa => Str);
  has Created => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has LatestRevision => (is => 'ro', isa => MQ_ConfigurationRevision);
  has Name => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Name' => {
                           'type' => 'Str'
                         },
               'Created' => {
                              'type' => 'Str'
                            },
               'Arn' => {
                          'type' => 'Str'
                        },
               'LatestRevision' => {
                                     'type' => 'MQ_ConfigurationRevision',
                                     'class' => 'Paws::MQ::ConfigurationRevision'
                                   },
               'Id' => {
                         'type' => 'Str'
                       },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Arn' => 'arn',
                       'Created' => 'created',
                       'Id' => 'id',
                       'LatestRevision' => 'latestRevision',
                       'Name' => 'name'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::CreateConfigurationResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Required. The Amazon Resource Name (ARN) of the configuration.


=head2 Created => Str

Required. The date and time of the configuration.


=head2 Id => Str

Required. The unique ID that Amazon MQ generates for the configuration.


=head2 LatestRevision => MQ_ConfigurationRevision

The latest revision of the configuration.


=head2 Name => Str

Required. The name of the configuration. This value can contain only
alphanumeric characters, dashes, periods, underscores, and tildes (- .
_ ~). This value must be 1-150 characters long.


=head2 _request_id => Str


=cut

