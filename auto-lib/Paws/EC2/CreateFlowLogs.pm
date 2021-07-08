
package Paws::EC2::CreateFlowLogs;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DeliverLogsPermissionArn => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has LogDestination => (is => 'ro', isa => 'Str');
  has LogDestinationType => (is => 'ro', isa => 'Str');
  has LogFormat => (is => 'ro', isa => 'Str');
  has LogGroupName => (is => 'ro', isa => 'Str');
  has MaxAggregationInterval => (is => 'ro', isa => 'Int');
  has ResourceIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ResourceId' , required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has TagSpecifications => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TagSpecification]', traits => ['NameInRequest'], request_name => 'TagSpecification' );
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
      ResourceIds              => [ 'MyFlowLogResourceId', ... ],
      ResourceType             => 'VPC',
      TrafficType              => 'ACCEPT',
      ClientToken              => 'MyString',                       # OPTIONAL
      DeliverLogsPermissionArn => 'MyString',                       # OPTIONAL
      DryRun                   => 1,                                # OPTIONAL
      LogDestination           => 'MyString',                       # OPTIONAL
      LogDestinationType       => 'cloud-watch-logs',               # OPTIONAL
      LogFormat                => 'MyString',                       # OPTIONAL
      LogGroupName             => 'MyString',                       # OPTIONAL
      MaxAggregationInterval   => 1,                                # OPTIONAL
      TagSpecifications        => [
        {
          ResourceType => 'client-vpn-endpoint'
          , # values: client-vpn-endpoint, customer-gateway, dedicated-host, dhcp-options, egress-only-internet-gateway, elastic-ip, elastic-gpu, export-image-task, export-instance-task, fleet, fpga-image, host-reservation, image, import-image-task, import-snapshot-task, instance, internet-gateway, key-pair, launch-template, local-gateway-route-table-vpc-association, natgateway, network-acl, network-interface, network-insights-analysis, network-insights-path, placement-group, reserved-instances, route-table, security-group, snapshot, spot-fleet-request, spot-instances-request, subnet, traffic-mirror-filter, traffic-mirror-session, traffic-mirror-target, transit-gateway, transit-gateway-attachment, transit-gateway-connect-peer, transit-gateway-multicast-domain, transit-gateway-route-table, volume, vpc, vpc-peering-connection, vpn-connection, vpn-gateway, vpc-flow-log; OPTIONAL
          Tags => [
            {
              Key   => 'MyString',
              Value => 'MyString',
            },
            ...
          ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
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

The ARN for the IAM role that permits Amazon EC2 to publish flow logs
to a CloudWatch Logs log group in your account.

If you specify C<LogDestinationType> as C<s3>, do not specify
C<DeliverLogsPermissionArn> or C<LogGroupName>.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 LogDestination => Str

Specifies the destination to which the flow log data is to be
published. Flow log data can be published to a CloudWatch Logs log
group or an Amazon S3 bucket. The value specified for this parameter
depends on the value specified for C<LogDestinationType>.

If C<LogDestinationType> is not specified or C<cloud-watch-logs>,
specify the Amazon Resource Name (ARN) of the CloudWatch Logs log
group. For example, to publish to a log group called C<my-logs>,
specify C<arn:aws:logs:us-east-1:123456789012:log-group:my-logs>.
Alternatively, use C<LogGroupName> instead.

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

If you specify C<LogDestinationType> as C<s3>, do not specify
C<DeliverLogsPermissionArn> or C<LogGroupName>.

Default: C<cloud-watch-logs>

Valid values are: C<"cloud-watch-logs">, C<"s3">

=head2 LogFormat => Str

The fields to include in the flow log record, in the order in which
they should appear. For a list of available fields, see Flow Log
Records
(https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html#flow-log-records).
If you omit this parameter, the flow log is created using the default
format. If you specify this parameter, you must specify at least one
field.

Specify the fields using the C<${field-id}> format, separated by
spaces. For the AWS CLI, use single quotation marks (' ') to surround
the parameter value.



=head2 LogGroupName => Str

The name of a new or existing CloudWatch Logs log group where Amazon
EC2 publishes your flow logs.

If you specify C<LogDestinationType> as C<s3>, do not specify
C<DeliverLogsPermissionArn> or C<LogGroupName>.



=head2 MaxAggregationInterval => Int

The maximum interval of time during which a flow of packets is captured
and aggregated into a flow log record. You can specify 60 seconds (1
minute) or 600 seconds (10 minutes).

When a network interface is attached to a Nitro-based instance
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances),
the aggregation interval is always 60 seconds or less, regardless of
the value that you specify.

Default: 600



=head2 B<REQUIRED> ResourceIds => ArrayRef[Str|Undef]

The ID of the subnet, network interface, or VPC for which you want to
create a flow log.

Constraints: Maximum of 1000 resources



=head2 B<REQUIRED> ResourceType => Str

The type of resource for which to create the flow log. For example, if
you specified a VPC ID for the C<ResourceId> property, specify C<VPC>
for this property.

Valid values are: C<"VPC">, C<"Subnet">, C<"NetworkInterface">

=head2 TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>]

The tags to apply to the flow logs.



=head2 B<REQUIRED> TrafficType => Str

The type of traffic to log. You can log traffic that the resource
accepts or rejects, or all traffic.

Valid values are: C<"ACCEPT">, C<"REJECT">, C<"ALL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFlowLogs in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

