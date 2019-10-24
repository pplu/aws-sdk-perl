
package Paws::MQ::UpdateConfigurationResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MQ::Types qw/MQ_SanitizationWarning MQ_ConfigurationRevision/;
  has Arn => (is => 'ro', isa => Str);
  has Created => (is => 'ro', isa => Str);
  has Id => (is => 'ro', isa => Str);
  has LatestRevision => (is => 'ro', isa => MQ_ConfigurationRevision);
  has Name => (is => 'ro', isa => Str);
  has Warnings => (is => 'ro', isa => ArrayRef[MQ_SanitizationWarning]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Id' => {
                         'type' => 'Str'
                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Warnings' => {
                               'class' => 'Paws::MQ::SanitizationWarning',
                               'type' => 'ArrayRef[MQ_SanitizationWarning]'
                             },
               'Created' => {
                              'type' => 'Str'
                            },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Name' => {
                           'type' => 'Str'
                         },
               'LatestRevision' => {
                                     'class' => 'Paws::MQ::ConfigurationRevision',
                                     'type' => 'MQ_ConfigurationRevision'
                                   }
             },
  'NameInRequest' => {
                       'Id' => 'id',
                       'Warnings' => 'warnings',
                       'Created' => 'created',
                       'Arn' => 'arn',
                       'Name' => 'name',
                       'LatestRevision' => 'latestRevision'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MQ::UpdateConfigurationResponse

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


=head2 Warnings => ArrayRef[MQ_SanitizationWarning]

The list of the first 20 warnings about the configuration XML elements
or attributes that were sanitized.


=head2 _request_id => Str


=cut

