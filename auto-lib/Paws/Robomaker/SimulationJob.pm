# Generated from default/object.tt
package Paws::Robomaker::SimulationJob;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::Robomaker::Types qw/Robomaker_RobotApplicationConfig Robomaker_VPCConfigResponse Robomaker_OutputLocation Robomaker_SimulationApplicationConfig Robomaker_TagMap/;
  has Arn => (is => 'ro', isa => Str);
  has ClientRequestToken => (is => 'ro', isa => Str);
  has FailureBehavior => (is => 'ro', isa => Str);
  has FailureCode => (is => 'ro', isa => Str);
  has FailureReason => (is => 'ro', isa => Str);
  has IamRole => (is => 'ro', isa => Str);
  has LastStartedAt => (is => 'ro', isa => Str);
  has LastUpdatedAt => (is => 'ro', isa => Str);
  has MaxJobDurationInSeconds => (is => 'ro', isa => Int);
  has Name => (is => 'ro', isa => Str);
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
               'SimulationApplications' => {
                                             'class' => 'Paws::Robomaker::SimulationApplicationConfig',
                                             'type' => 'ArrayRef[Robomaker_SimulationApplicationConfig]'
                                           },
               'Status' => {
                             'type' => 'Str'
                           },
               'OutputLocation' => {
                                     'class' => 'Paws::Robomaker::OutputLocation',
                                     'type' => 'Robomaker_OutputLocation'
                                   },
               'FailureBehavior' => {
                                      'type' => 'Str'
                                    },
               'LastStartedAt' => {
                                    'type' => 'Str'
                                  },
               'ClientRequestToken' => {
                                         'type' => 'Str'
                                       },
               'FailureReason' => {
                                    'type' => 'Str'
                                  },
               'Arn' => {
                          'type' => 'Str'
                        },
               'LastUpdatedAt' => {
                                    'type' => 'Str'
                                  },
               'SimulationTimeMillis' => {
                                           'type' => 'Int'
                                         },
               'FailureCode' => {
                                  'type' => 'Str'
                                },
               'VpcConfig' => {
                                'class' => 'Paws::Robomaker::VPCConfigResponse',
                                'type' => 'Robomaker_VPCConfigResponse'
                              },
               'RobotApplications' => {
                                        'class' => 'Paws::Robomaker::RobotApplicationConfig',
                                        'type' => 'ArrayRef[Robomaker_RobotApplicationConfig]'
                                      },
               'Tags' => {
                           'class' => 'Paws::Robomaker::TagMap',
                           'type' => 'Robomaker_TagMap'
                         },
               'Name' => {
                           'type' => 'Str'
                         },
               'IamRole' => {
                              'type' => 'Str'
                            },
               'MaxJobDurationInSeconds' => {
                                              'type' => 'Int'
                                            }
             },
  'NameInRequest' => {
                       'SimulationApplications' => 'simulationApplications',
                       'Status' => 'status',
                       'OutputLocation' => 'outputLocation',
                       'FailureBehavior' => 'failureBehavior',
                       'LastStartedAt' => 'lastStartedAt',
                       'ClientRequestToken' => 'clientRequestToken',
                       'FailureReason' => 'failureReason',
                       'Arn' => 'arn',
                       'LastUpdatedAt' => 'lastUpdatedAt',
                       'SimulationTimeMillis' => 'simulationTimeMillis',
                       'FailureCode' => 'failureCode',
                       'VpcConfig' => 'vpcConfig',
                       'RobotApplications' => 'robotApplications',
                       'Tags' => 'tags',
                       'Name' => 'name',
                       'IamRole' => 'iamRole',
                       'MaxJobDurationInSeconds' => 'maxJobDurationInSeconds'
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


=head2 MaxJobDurationInSeconds => Int

  The maximum simulation job duration in seconds. The value must be 8
days (691,200 seconds) or less.


=head2 Name => Str

  The name of the simulation job.


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

