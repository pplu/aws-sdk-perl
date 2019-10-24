
package Paws::Greengrass::GetLoggerDefinitionVersionResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw/Greengrass_LoggerDefinitionVersion/;
  has Arn => (is => 'ro', isa => Str);
  has CreationTimestamp => (is => 'ro', isa => Str);
  has Definition => (is => 'ro', isa => Greengrass_LoggerDefinitionVersion);
  has Id => (is => 'ro', isa => Str);
  has Version => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'CreationTimestamp' => {
                                        'type' => 'Str'
                                      },
               'Version' => {
                              'type' => 'Str'
                            },
               'Definition' => {
                                 'class' => 'Paws::Greengrass::LoggerDefinitionVersion',
                                 'type' => 'Greengrass_LoggerDefinitionVersion'
                               },
               'Id' => {
                         'type' => 'Str'
                       },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Arn' => {
                          'type' => 'Str'
                        }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::GetLoggerDefinitionVersionResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the logger definition version.


=head2 CreationTimestamp => Str

The time, in milliseconds since the epoch, when the logger definition
version was created.


=head2 Definition => Greengrass_LoggerDefinitionVersion

Information about the logger definition version.


=head2 Id => Str

The ID of the logger definition version.


=head2 Version => Str

The version of the logger definition version.


=head2 _request_id => Str


=cut

