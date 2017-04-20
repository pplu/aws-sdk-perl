package Paws::EC2::FlowLog;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has DeliverLogsErrorMessage => (is => 'ro', isa => 'Str', request_name => 'deliverLogsErrorMessage', traits => ['NameInRequest']);
  has DeliverLogsPermissionArn => (is => 'ro', isa => 'Str', request_name => 'deliverLogsPermissionArn', traits => ['NameInRequest']);
  has DeliverLogsStatus => (is => 'ro', isa => 'Str', request_name => 'deliverLogsStatus', traits => ['NameInRequest']);
  has FlowLogId => (is => 'ro', isa => 'Str', request_name => 'flowLogId', traits => ['NameInRequest']);
  has FlowLogStatus => (is => 'ro', isa => 'Str', request_name => 'flowLogStatus', traits => ['NameInRequest']);
  has LogGroupName => (is => 'ro', isa => 'Str', request_name => 'logGroupName', traits => ['NameInRequest']);
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest']);
  has TrafficType => (is => 'ro', isa => 'Str', request_name => 'trafficType', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::FlowLog

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::FlowLog object:

  $service_obj->Method(Att1 => { CreationTime => $value, ..., TrafficType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::FlowLog object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationTime

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 CreationTime => Str

  The date and time the flow log was created.


=head2 DeliverLogsErrorMessage => Str

  Information about the error that occurred. C<Rate limited> indicates
that CloudWatch logs throttling has been applied for one or more
network interfaces, or that you've reached the limit on the number of
CloudWatch Logs log groups that you can create. C<Access error>
indicates that the IAM role associated with the flow log does not have
sufficient permissions to publish to CloudWatch Logs. C<Unknown error>
indicates an internal error.


=head2 DeliverLogsPermissionArn => Str

  The ARN of the IAM role that posts logs to CloudWatch Logs.


=head2 DeliverLogsStatus => Str

  The status of the logs delivery (C<SUCCESS> | C<FAILED>).


=head2 FlowLogId => Str

  The flow log ID.


=head2 FlowLogStatus => Str

  The status of the flow log (C<ACTIVE>).


=head2 LogGroupName => Str

  The name of the flow log group.


=head2 ResourceId => Str

  The ID of the resource on which the flow log was created.


=head2 TrafficType => Str

  The type of traffic captured for the flow log.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
