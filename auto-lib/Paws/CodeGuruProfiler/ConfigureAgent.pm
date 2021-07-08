
package Paws::CodeGuruProfiler::ConfigureAgent;
  use Moose;
  has FleetInstanceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fleetInstanceId');
  has Metadata => (is => 'ro', isa => 'Paws::CodeGuruProfiler::Metadata', traits => ['NameInRequest'], request_name => 'metadata');
  has ProfilingGroupName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'profilingGroupName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfigureAgent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/profilingGroups/{profilingGroupName}/configureAgent');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeGuruProfiler::ConfigureAgentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeGuruProfiler::ConfigureAgent - Arguments for method ConfigureAgent on L<Paws::CodeGuruProfiler>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfigureAgent on the
L<Amazon CodeGuru Profiler|Paws::CodeGuruProfiler> service. Use the attributes of this class
as arguments to method ConfigureAgent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfigureAgent.

=head1 SYNOPSIS

    my $codeguru-profiler = Paws->service('CodeGuruProfiler');
    my $ConfigureAgentResponse = $codeguru -profiler->ConfigureAgent(
      ProfilingGroupName => 'MyProfilingGroupName',
      FleetInstanceId    => 'MyFleetInstanceId',      # OPTIONAL
      Metadata           => {
        'ComputePlatform' => 'MyString'
        , # key: values: ComputePlatform, AgentId, AwsRequestId, ExecutionEnvironment, LambdaFunctionArn, LambdaMemoryLimitInMB, LambdaRemainingTimeInMilliseconds, LambdaTimeGapBetweenInvokesInMilliseconds, LambdaPreviousExecutionTimeInMilliseconds
      },    # OPTIONAL
    );

    # Results:
    my $Configuration = $ConfigureAgentResponse->Configuration;

    # Returns a L<Paws::CodeGuruProfiler::ConfigureAgentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/codeguru-profiler/ConfigureAgent>

=head1 ATTRIBUTES


=head2 FleetInstanceId => Str

A universally unique identifier (UUID) for a profiling instance. For
example, if the profiling instance is an Amazon EC2 instance, it is the
instance ID. If it is an AWS Fargate container, it is the container's
task ID.



=head2 Metadata => L<Paws::CodeGuruProfiler::Metadata>

Metadata captured about the compute platform the agent is running on.
It includes information about sampling and reporting. The valid fields
are:

=over

=item *

C<COMPUTE_PLATFORM> - The compute platform on which the agent is
running

=item *

C<AGENT_ID> - The ID for an agent instance.

=item *

C<AWS_REQUEST_ID> - The AWS request ID of a Lambda invocation.

=item *

C<EXECUTION_ENVIRONMENT> - The execution environment a Lambda function
is running on.

=item *

C<LAMBDA_FUNCTION_ARN> - The Amazon Resource Name (ARN) that is used to
invoke a Lambda function.

=item *

C<LAMBDA_MEMORY_LIMIT_IN_MB> - The memory allocated to a Lambda
function.

=item *

C<LAMBDA_REMAINING_TIME_IN_MILLISECONDS> - The time in milliseconds
before execution of a Lambda function times out.

=item *

C<LAMBDA_TIME_GAP_BETWEEN_INVOKES_IN_MILLISECONDS> - The time in
milliseconds between two invocations of a Lambda function.

=item *

C<LAMBDA_PREVIOUS_EXECUTION_TIME_IN_MILLISECONDS> - The time in
milliseconds for the previous Lambda invocation.

=back




=head2 B<REQUIRED> ProfilingGroupName => Str

The name of the profiling group for which the configured agent is
collecting profiling data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConfigureAgent in L<Paws::CodeGuruProfiler>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

