# Generated from default/object.tt
package Paws::Robomaker::SimulationJob;
  use Moo;
  use Types::Standard qw/Str ArrayRef Int/;
  use Paws::Robomaker::Types qw/Robomaker_VPCConfigResponse Robomaker_DataSource Robomaker_NetworkInterface Robomaker_SimulationApplicationConfig Robomaker_OutputLocation Robomaker_LoggingConfig Robomaker_RobotApplicationConfig Robomaker_TagMap/;
  has Arn => (is => 'ro', isa => Str);
  has ClientRequestToken => (is => 'ro', isa => Str);
  has DataSources => (is => 'ro', isa => ArrayRef[Robomaker_DataSource]);
  has FailureBehavior => (is => 'ro', isa => Str);
  has FailureCode => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has IamRole => (is => 'ro', isa => Str);
  has LastStartedAt => (is => 'ro', isa => Str);
  has LastUpdatedAt => (is => 'ro', isa => Str);
  has LoggingConfig => (is => 'ro', isa => Robomaker_LoggingConfig);
  has MaxJobDurationInSeconds => (is => 'ro', isa => Int);
  has Name => (is => 'ro', isa => Str);
  has NetworkInterface => (is => 'ro', isa => Robomaker_NetworkInterface);
  has OutputLocation => (is => 'ro', isa => Robomaker_OutputLocation);
  has RobotApplications => (is => 'ro', isa => ArrayRef[Robomaker_RobotApplicationConfig]);
  has SimulationApplications => (is => 'ro', isa => ArrayRef[Robomaker_SimulationApplicationConfig]);
  has SimulationTimeMillis => (is => 'ro', isa => Int);
  has Status => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => Robomaker_TagMap);
  has VpcConfig => (is => 'ro', isa => Robomaker_VPCConfigResponse);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'FailureCode' => {
                                  'type' => 'Str'
                                },
               'LastStartedAt' => {
                                    'type' => 'Str'
                                  },
               'Arn' => {
                          'type' => 'Str'
                        },
               'Tags' => {
                           'type' => 'Robomaker_TagMap',
                           'class' => 'Paws::Robomaker::TagMap'
                         },
               'SimulationTimeMillis' => {
                                           'type' => 'Int'
                                         },
               'OutputLocation' => {
                                     'class' => 'Paws::Robomaker::OutputLocation',
                                     'type' => 'Robomaker_OutputLocation'
                                   },
               'RobotApplications' => {
                                        'type' => 'ArrayRef[Robomaker_RobotApplicationConfig]',
                                        'class' => 'Paws::Robomaker::RobotApplicationConfig'
                                      },
               'LoggingConfig' => {
                                    'type' => 'Robomaker_LoggingConfig',
                                    'class' => 'Paws::Robomaker::LoggingConfig'
                                  },
               'NetworkInterface' => {
                                       'class' => 'Paws::Robomaker::NetworkInterface',
                                       'type' => 'Robomaker_NetworkInterface'
                                     },
               'VpcConfig' => {
                                'type' => 'Robomaker_VPCConfigResponse',
                                'class' => 'Paws::Robomaker::VPCConfigResponse'
                              },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'Name' => {
                           'type' => 'Str'
                         },
               'DataSources' => {
                                  'class' => 'Paws::Robomaker::DataSource',
                                  'type' => 'ArrayRef[Robomaker_DataSource]'
                                },
               'IamRole' => {
                              'type' => 'Str'
                            },
               'SimulationApplications' => {
                                             'class' => 'Paws::Robomaker::SimulationApplicationConfig',
                                             'type' => 'ArrayRef[Robomaker_SimulationApplicationConfig]'
                                           },
               'Status' => {
                             'type' => 'Str'
                           },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'FailureBehavior' => {
                                      'type' => 'Str'
                                    },
               'MaxJobDurationInSeconds' => {
                                              'type' => 'Int'
                                            },
               'LastUpdatedAt' => {
                                    'type' => 'Str'
                                  }
             },
  'NameInRequest' => {
                       'LastUpdatedAt' => 'lastUpdatedAt',
                       'FailureReason' => 'failureReason',
                       'FailureBehavior' => 'failureBehavior',
                       'MaxJobDurationInSeconds' => 'maxJobDurationInSeconds',
                       'Status' => 'status',
                       'Name' => 'name',
                       'ClientRequestToken' => 'clientRequestToken',
                       'DataSources' => 'dataSources',
                       'IamRole' => 'iamRole',
                       'SimulationApplications' => 'simulationApplications',
                       'NetworkInterface' => 'networkInterface',
                       'VpcConfig' => 'vpcConfig',
                       'LoggingConfig' => 'loggingConfig',
                       'RobotApplications' => 'robotApplications',
                       'SimulationTimeMillis' => 'simulationTimeMillis',
                       'Tags' => 'tags',
                       'OutputLocation' => 'outputLocation',
                       'FailureCode' => 'failureCode',
                       'LastStartedAt' => 'lastStartedAt',
                       'Arn' => 'arn'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::SimulationJob

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::SimulationJob object:

  $service_obj->Method(Att1 => { Arn => $value, ..., VpcConfig => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::SimulationJob object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Information about a simulation job.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the simulation job.


=head2 ClientRequestToken => Str

  A unique identifier for this C<SimulationJob> request.


=head2 DataSources => ArrayRef[Robomaker_DataSource]

  The data sources for the simulation job.


=head2 FailureBehavior => Str

  The failure behavior the simulation job.

=over

=item Continue

Restart the simulation job in the same host instance.

=item Fail

Stop the simulation job and terminate the instance.

=back



=head2 FailureCode => Str

  The failure code of the simulation job if it failed.


=head2 FailureReason => Str

  The reason why the simulation job failed.


=head2 IamRole => Str

  The IAM role that allows the simulation instance to call the AWS APIs
that are specified in its associated policies on your behalf. This is
how credentials are passed in to your simulation job.


=head2 LastStartedAt => Str

  The time, in milliseconds since the epoch, when the simulation job was
last started.


=head2 LastUpdatedAt => Str

  The time, in milliseconds since the epoch, when the simulation job was
last updated.


=head2 LoggingConfig => Robomaker_LoggingConfig

  The logging configuration.


=head2 MaxJobDurationInSeconds => Int

  The maximum simulation job duration in seconds. The value must be 8
days (691,200 seconds) or less.


=head2 Name => Str

  The name of the simulation job.


=head2 NetworkInterface => Robomaker_NetworkInterface

  Information about a network interface.


=head2 OutputLocation => Robomaker_OutputLocation

  Location for output files generated by the simulation job.


=head2 RobotApplications => ArrayRef[Robomaker_RobotApplicationConfig]

  A list of robot applications.


=head2 SimulationApplications => ArrayRef[Robomaker_SimulationApplicationConfig]

  A list of simulation applications.


=head2 SimulationTimeMillis => Int

  The simulation job execution duration in milliseconds.


=head2 Status => Str

  Status of the simulation job.


=head2 Tags => Robomaker_TagMap

  A map that contains tag keys and tag values that are attached to the
simulation job.


=head2 VpcConfig => Robomaker_VPCConfigResponse

  VPC configuration information.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

