
package Paws::EC2::CreateFlowLogs;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DeliverLogsPermissionArn => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has LogDestination => (is => 'ro', isa => 'Str');
  has LogDestinationType => (is => 'ro', isa => 'Str');
  has LogGroupName => (is => 'ro', isa => 'Str');
  has ResourceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ResourceId' , required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has TrafficType => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFlowLogs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateFlowLogsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateFlowLogs - Arguments for method CreateFlowLogs on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFlowLogs on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method CreateFlowLogs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFlowLogs.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $CreateFlowLogsResult = $ec2->CreateFlowLogs(
      ResourceIds              => [ 'MyString', ... ],
      ResourceType             => 'VPC',
      TrafficType              => 'ACCEPT',
      ClientToken              => 'MyString',            # OPTIONAL
      DeliverLogsPermissionArn => 'MyString',            # OPTIONAL
      DryRun                   => 1,                     # OPTIONAL
      LogDestination           => 'MyString',            # OPTIONAL
      LogDestinationType       => 'cloud-watch-logs',    # OPTIONAL
      LogGroupName             => 'MyString',            # OPTIONAL
    );

    # Results:
    my $ClientToken  = $CreateFlowLogsResult->ClientToken;
    my $FlowLogIds   = $CreateFlowLogsResult->FlowLogIds;
    my $Unsuccessful = $CreateFlowLogsResult->Unsuccessful;

    # Returns a L<Paws::EC2::CreateFlowLogsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateFlowLogs>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).



=head2 DeliverLogsPermissionArn => Str

The ARN for the IAM role that's used to post flow logs to a log group.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 LogDestination => Str

Specifies the destination to which the flow log data is to be
published. Flow log data can be published to an CloudWatch Logs log
group or an Amazon S3 bucket. The value specified for this parameter
depends on the value specified for LogDestinationType.

If LogDestinationType is not specified or C<cloud-watch-logs>, specify
the Amazon Resource Name (ARN) of the CloudWatch Logs log group.

If LogDestinationType is C<s3>, specify the ARN of the Amazon S3
bucket. You can also specify a subfolder in the bucket. To specify a
subfolder in the bucket, use the following ARN format:
C<bucket_ARN/subfolder_name/>. For example, to specify a subfolder
named C<my-logs> in a bucket named C<my-bucket>, use the following ARN:
C<arn:aws:s3:::my-bucket/my-logs/>. You cannot use C<AWSLogs> as a
subfolder name. This is a reserved term.



=head2 LogDestinationType => Str

Specifies the type of destination to which the flow log data is to be
published. Flow log data can be published to CloudWatch Logs or Amazon
S3. To publish flow log data to CloudWatch Logs, specify
C<cloud-watch-logs>. To publish flow log data to Amazon S3, specify
C<s3>.

Default: C<cloud-watch-logs>

Valid values are: C<"cloud-watch-logs">, C<"s3">

=head2 LogGroupName => Str

The name of the log group.



=head2 B<REQUIRED> ResourceIds => ArrayRef[Str|Undef]

One or more subnet, network interface, or VPC IDs.

Constraints: Maximum of 1000 resources



=head2 B<REQUIRED> ResourceType => Str

The type of resource on which to create the flow log.

Valid values are: C<"VPC">, C<"Subnet">, C<"NetworkInterface">

=head2 B<REQUIRED> TrafficType => Str

The type of traffic to log.

Valid values are: C<"ACCEPT">, C<"REJECT">, C<"ALL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFlowLogs in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

