
package Paws::Robomaker::CreateSimulationJob;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has FailureBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureBehavior');
  has IamRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iamRole', required => 1);
  has MaxJobDurationInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxJobDurationInSeconds', required => 1);
  has OutputLocation => (is => 'ro', isa => 'Paws::Robomaker::OutputLocation', traits => ['NameInRequest'], request_name => 'outputLocation');
  has RobotApplications => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::RobotApplicationConfig]', traits => ['NameInRequest'], request_name => 'robotApplications');
  has SimulationApplications => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::SimulationApplicationConfig]', traits => ['NameInRequest'], request_name => 'simulationApplications');
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has VpcConfig => (is => 'ro', isa => 'Paws::Robomaker::VPCConfig', traits => ['NameInRequest'], request_name => 'vpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSimulationJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createSimulationJob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::CreateSimulationJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::CreateSimulationJob - Arguments for method CreateSimulationJob on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSimulationJob on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method CreateSimulationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSimulationJob.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $CreateSimulationJobResponse = $robomaker->CreateSimulationJob(
      IamRole                 => 'MyIamRole',
      MaxJobDurationInSeconds => 1,
      ClientRequestToken      => 'MyClientRequestToken',    # OPTIONAL
      FailureBehavior         => 'Fail',                    # OPTIONAL
      OutputLocation          => {
        S3Bucket => 'MyS3Bucket',    # min: 3, max: 63; OPTIONAL
        S3Prefix => 'MyS3Key',       # min: 1, max: 1024; OPTIONAL
      },    # OPTIONAL
      RobotApplications => [
        {
          Application  => 'MyArn',    # min: 1, max: 1224
          LaunchConfig => {
            LaunchFile           => 'MyGenericString',
            PackageName          => 'MyGenericString',
            EnvironmentVariables => {
              'MyEnvironmentVariableKey' => 'MyEnvironmentVariableValue'
              ,    # key: min: 1, max: 1024, value: min: 1, max: 1024
            },    # max: 16; OPTIONAL
          },
          ApplicationVersion => 'MyVersion',    # min: 1, max: 255; OPTIONAL
        },
        ...
      ],                                        # OPTIONAL
      SimulationApplications => [
        {
          Application  => 'MyArn',              # min: 1, max: 1224
          LaunchConfig => {
            LaunchFile           => 'MyGenericString',
            PackageName          => 'MyGenericString',
            EnvironmentVariables => {
              'MyEnvironmentVariableKey' => 'MyEnvironmentVariableValue'
              ,    # key: min: 1, max: 1024, value: min: 1, max: 1024
            },    # max: 16; OPTIONAL
          },
          ApplicationVersion => 'MyVersion',    # min: 1, max: 255; OPTIONAL
        },
        ...
      ],                                        # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      VpcConfig => {
        Subnets        => [ 'MyGenericString', ... ], # min: 1, max: 16
        AssignPublicIp => 1,                          # OPTIONAL
        SecurityGroups => [ 'MyGenericString', ... ], # min: 1, max: 5; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $Arn                = $CreateSimulationJobResponse->Arn;
    my $ClientRequestToken = $CreateSimulationJobResponse->ClientRequestToken;
    my $FailureBehavior    = $CreateSimulationJobResponse->FailureBehavior;
    my $FailureCode        = $CreateSimulationJobResponse->FailureCode;
    my $IamRole            = $CreateSimulationJobResponse->IamRole;
    my $LastUpdatedAt      = $CreateSimulationJobResponse->LastUpdatedAt;
    my $MaxJobDurationInSeconds =
      $CreateSimulationJobResponse->MaxJobDurationInSeconds;
    my $OutputLocation    = $CreateSimulationJobResponse->OutputLocation;
    my $RobotApplications = $CreateSimulationJobResponse->RobotApplications;
    my $SimulationApplications =
      $CreateSimulationJobResponse->SimulationApplications;
    my $SimulationTimeMillis =
      $CreateSimulationJobResponse->SimulationTimeMillis;
    my $Status    = $CreateSimulationJobResponse->Status;
    my $Tags      = $CreateSimulationJobResponse->Tags;
    my $VpcConfig = $CreateSimulationJobResponse->VpcConfig;

    # Returns a L<Paws::Robomaker::CreateSimulationJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/CreateSimulationJob>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 FailureBehavior => Str

The failure behavior the simulation job.

=over

=item Continue

Restart the simulation job in the same host instance.

=item Fail

Stop the simulation job and terminate the instance.

=back


Valid values are: C<"Fail">, C<"Continue">

=head2 B<REQUIRED> IamRole => Str

The IAM role name that allows the simulation instance to call the AWS
APIs that are specified in its associated policies on your behalf. This
is how credentials are passed in to your simulation job.



=head2 B<REQUIRED> MaxJobDurationInSeconds => Int

The maximum simulation job duration in seconds (up to 14 days or
1,209,600 seconds. When C<maxJobDurationInSeconds> is reached, the
simulation job will status will transition to C<Completed>.



=head2 OutputLocation => L<Paws::Robomaker::OutputLocation>

Location for output files generated by the simulation job.



=head2 RobotApplications => ArrayRef[L<Paws::Robomaker::RobotApplicationConfig>]

The robot application to use in the simulation job.



=head2 SimulationApplications => ArrayRef[L<Paws::Robomaker::SimulationApplicationConfig>]

The simulation application to use in the simulation job.



=head2 Tags => L<Paws::Robomaker::TagMap>

A map that contains tag keys and tag values that are attached to the
simulation job.



=head2 VpcConfig => L<Paws::Robomaker::VPCConfig>

If your simulation job accesses resources in a VPC, you provide this
parameter identifying the list of security group IDs and subnet IDs.
These must belong to the same VPC. You must provide at least one
security group and one subnet ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSimulationJob in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

