
package Paws::Robomaker::StartSimulationJobBatch;
  use Moose;
  has BatchPolicy => (is => 'ro', isa => 'Paws::Robomaker::BatchPolicy', traits => ['NameInRequest'], request_name => 'batchPolicy');
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has CreateSimulationJobRequests => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::SimulationJobRequest]', traits => ['NameInRequest'], request_name => 'createSimulationJobRequests', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Robomaker::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartSimulationJobBatch');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/startSimulationJobBatch');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Robomaker::StartSimulationJobBatchResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::StartSimulationJobBatch - Arguments for method StartSimulationJobBatch on L<Paws::Robomaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartSimulationJobBatch on the
L<AWS RoboMaker|Paws::Robomaker> service. Use the attributes of this class
as arguments to method StartSimulationJobBatch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartSimulationJobBatch.

=head1 SYNOPSIS

    my $robomaker = Paws->service('Robomaker');
    my $StartSimulationJobBatchResponse = $robomaker->StartSimulationJobBatch(
      CreateSimulationJobRequests => [
        {
          MaxJobDurationInSeconds => 1,
          DataSources             => [
            {
              Name     => 'MyName',        # min: 1, max: 255
              S3Bucket => 'MyS3Bucket',    # min: 3, max: 63; OPTIONAL
              S3Keys   => [
                'MyS3Key', ...             # min: 1, max: 1024; OPTIONAL
              ],                           # min: 1, max: 100

            },
            ...
          ],                               # min: 1, max: 5; OPTIONAL
          FailureBehavior => 'Fail',       # values: Fail, Continue; OPTIONAL
          IamRole         => 'MyIamRole',  # min: 1, max: 255; OPTIONAL
          LoggingConfig   => {
            RecordAllRosTopics => 1,

          },                               # OPTIONAL
          OutputLocation => {
            S3Bucket => 'MyS3Bucket',      # min: 3, max: 63; OPTIONAL
            S3Prefix => 'MyS3Key',         # min: 1, max: 1024; OPTIONAL
          },    # OPTIONAL
          RobotApplications => [
            {
              Application  => 'MyArn',    # min: 1, max: 1224
              LaunchConfig => {
                LaunchFile           => 'MyCommand',    # min: 1, max: 1024
                PackageName          => 'MyCommand',    # min: 1, max: 1024
                EnvironmentVariables => {
                  'MyEnvironmentVariableKey' => 'MyEnvironmentVariableValue'
                  ,    # key: min: 1, max: 1024, value: min: 1, max: 1024
                },    # max: 16; OPTIONAL
                PortForwardingConfig => {
                  PortMappings => [
                    {
                      ApplicationPort  => 1,    # min: 1024, max: 65535
                      JobPort          => 1,    # min: 1, max: 65535
                      EnableOnPublicIp => 1,    # OPTIONAL
                    },
                    ...
                  ],                            # max: 10; OPTIONAL
                },    # OPTIONAL
              },
              ApplicationVersion => 'MyVersion',    # min: 1, max: 255; OPTIONAL
            },
            ...
          ],                                        # min: 1, max: 1; OPTIONAL
          SimulationApplications => [
            {
              Application  => 'MyArn',              # min: 1, max: 1224
              LaunchConfig => {
                LaunchFile           => 'MyCommand',    # min: 1, max: 1024
                PackageName          => 'MyCommand',    # min: 1, max: 1024
                EnvironmentVariables => {
                  'MyEnvironmentVariableKey' => 'MyEnvironmentVariableValue'
                  ,    # key: min: 1, max: 1024, value: min: 1, max: 1024
                },    # max: 16; OPTIONAL
                PortForwardingConfig => {
                  PortMappings => [
                    {
                      ApplicationPort  => 1,    # min: 1024, max: 65535
                      JobPort          => 1,    # min: 1, max: 65535
                      EnableOnPublicIp => 1,    # OPTIONAL
                    },
                    ...
                  ],                            # max: 10; OPTIONAL
                },    # OPTIONAL
              },
              ApplicationVersion => 'MyVersion',    # min: 1, max: 255; OPTIONAL
            },
            ...
          ],                                        # min: 1, max: 1; OPTIONAL
          Tags => {
            'MyTagKey' => 'MyTagValue', # key: min: 1, max: 128, value: max: 256
          },    # max: 50; OPTIONAL
          UseDefaultApplications => 1,
          VpcConfig              => {
            Subnets => [
              'MyNonEmptyString', ...    # min: 1, max: 255
            ],                           # min: 1, max: 16
            AssignPublicIp => 1,         # OPTIONAL
            SecurityGroups => [
              'MyNonEmptyString', ...    # min: 1, max: 255
            ],                           # min: 1, max: 5; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],
      BatchPolicy => {
        MaxConcurrency   => 1,    # OPTIONAL
        TimeoutInSeconds => 1,    # OPTIONAL
      },    # OPTIONAL
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn         = $StartSimulationJobBatchResponse->Arn;
    my $BatchPolicy = $StartSimulationJobBatchResponse->BatchPolicy;
    my $ClientRequestToken =
      $StartSimulationJobBatchResponse->ClientRequestToken;
    my $CreatedAt       = $StartSimulationJobBatchResponse->CreatedAt;
    my $CreatedRequests = $StartSimulationJobBatchResponse->CreatedRequests;
    my $FailedRequests  = $StartSimulationJobBatchResponse->FailedRequests;
    my $FailureCode     = $StartSimulationJobBatchResponse->FailureCode;
    my $FailureReason   = $StartSimulationJobBatchResponse->FailureReason;
    my $PendingRequests = $StartSimulationJobBatchResponse->PendingRequests;
    my $Status          = $StartSimulationJobBatchResponse->Status;
    my $Tags            = $StartSimulationJobBatchResponse->Tags;

    # Returns a L<Paws::Robomaker::StartSimulationJobBatchResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/robomaker/StartSimulationJobBatch>

=head1 ATTRIBUTES


=head2 BatchPolicy => L<Paws::Robomaker::BatchPolicy>

The batch policy.



=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> CreateSimulationJobRequests => ArrayRef[L<Paws::Robomaker::SimulationJobRequest>]

A list of simulation job requests to create in the batch.



=head2 Tags => L<Paws::Robomaker::TagMap>

A map that contains tag keys and tag values that are attached to the
deployment job batch.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartSimulationJobBatch in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

