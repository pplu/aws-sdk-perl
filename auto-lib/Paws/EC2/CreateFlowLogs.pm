
package Paws::EC2::CreateFlowLogs;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DeliverLogsPermissionArn => (is => 'ro', isa => 'Str', required => 1);
  has LogGroupName => (is => 'ro', isa => 'Str', required => 1);
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
      DeliverLogsPermissionArn => 'MyString',
      LogGroupName             => 'MyString',
      ResourceIds              => [ 'MyString', ... ],
      ResourceType             => 'VPC',
      TrafficType              => 'ACCEPT',
      ClientToken              => 'MyString',            # OPTIONAL
    );

    # Results:
    my $FlowLogIds   = $CreateFlowLogsResult->FlowLogIds;
    my $ClientToken  = $CreateFlowLogsResult->ClientToken;
    my $Unsuccessful = $CreateFlowLogsResult->Unsuccessful;

    # Returns a L<Paws::EC2::CreateFlowLogsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/CreateFlowLogs>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. For more information, see How to Ensure Idempotency
(http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html).



=head2 B<REQUIRED> DeliverLogsPermissionArn => Str

The ARN for the IAM role that's used to post flow logs to a CloudWatch
Logs log group.



=head2 B<REQUIRED> LogGroupName => Str

The name of the CloudWatch log group.



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

