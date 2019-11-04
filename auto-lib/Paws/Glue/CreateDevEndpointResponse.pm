
package Paws::Glue::CreateDevEndpointResponse;
  use Moose;
  has Arguments => (is => 'ro', isa => 'Paws::Glue::MapValue');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has EndpointName => (is => 'ro', isa => 'Str');
  has ExtraJarsS3Path => (is => 'ro', isa => 'Str');
  has ExtraPythonLibsS3Path => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has NumberOfWorkers => (is => 'ro', isa => 'Int');
  has RoleArn => (is => 'ro', isa => 'Str');
  has SecurityConfiguration => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Status => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
  has WorkerType => (is => 'ro', isa => 'Str');
  has YarnEndpointAddress => (is => 'ro', isa => 'Str');
  has ZeppelinRemoteSparkInterpreterPort => (is => 'ro', isa => 'Int');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateDevEndpointResponse

=head1 ATTRIBUTES


=head2 Arguments => L<Paws::Glue::MapValue>

The map of arguments used to configure this C<DevEndpoint>.


=head2 AvailabilityZone => Str

The AWS Availability Zone where this C<DevEndpoint> is located.


=head2 CreatedTimestamp => Str

The point in time at which this C<DevEndpoint> was created.


=head2 EndpointName => Str

The name assigned to the new C<DevEndpoint>.


=head2 ExtraJarsS3Path => Str

Path to one or more Java C<.jar> files in an S3 bucket that will be
loaded in your C<DevEndpoint>.


=head2 ExtraPythonLibsS3Path => Str

The paths to one or more Python libraries in an S3 bucket that will be
loaded in your C<DevEndpoint>.


=head2 FailureReason => Str

The reason for a current failure in this C<DevEndpoint>.


=head2 NumberOfNodes => Int

The number of AWS Glue Data Processing Units (DPUs) allocated to this
DevEndpoint.


=head2 NumberOfWorkers => Int

The number of workers of a defined C<workerType> that are allocated to
the development endpoint.


=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the role assigned to the new
C<DevEndpoint>.


=head2 SecurityConfiguration => Str

The name of the C<SecurityConfiguration> structure being used with this
C<DevEndpoint>.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The security groups assigned to the new C<DevEndpoint>.


=head2 Status => Str

The current status of the new C<DevEndpoint>.


=head2 SubnetId => Str

The subnet ID assigned to the new C<DevEndpoint>.


=head2 VpcId => Str

The ID of the virtual private cloud (VPC) used by this C<DevEndpoint>.


=head2 WorkerType => Str

The type of predefined worker that is allocated to the development
endpoint. May be a value of Standard, G.1X, or G.2X.

Valid values are: C<"Standard">, C<"G.1X">, C<"G.2X">
=head2 YarnEndpointAddress => Str

The address of the YARN endpoint used by this C<DevEndpoint>.


=head2 ZeppelinRemoteSparkInterpreterPort => Int

The Apache Zeppelin port for the remote Apache Spark interpreter.


=head2 _request_id => Str


=cut

1;