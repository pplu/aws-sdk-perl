
package Paws::CloudWatchLogs::PutSubscriptionFilter;
  use Moose;
  has DestinationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationArn' , required => 1);
  has Distribution => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distribution' );
  has FilterName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterName' , required => 1);
  has FilterPattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterPattern' , required => 1);
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' , required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutSubscriptionFilter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutSubscriptionFilter - Arguments for method PutSubscriptionFilter on L<Paws::CloudWatchLogs>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutSubscriptionFilter on the
L<Amazon CloudWatch Logs|Paws::CloudWatchLogs> service. Use the attributes of this class
as arguments to method PutSubscriptionFilter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutSubscriptionFilter.

=head1 SYNOPSIS

    my $logs = Paws->service('CloudWatchLogs');
    $logs->PutSubscriptionFilter(
      DestinationArn => 'MyDestinationArn',
      FilterName     => 'MyFilterName',
      FilterPattern  => 'MyFilterPattern',
      LogGroupName   => 'MyLogGroupName',
      Distribution   => 'Random',             # OPTIONAL
      RoleArn        => 'MyRoleArn',          # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/logs/PutSubscriptionFilter>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationArn => Str

The ARN of the destination to deliver matching log events to.
Currently, the supported destinations are:

=over

=item *

An Amazon Kinesis stream belonging to the same account as the
subscription filter, for same-account delivery.

=item *

A logical destination (specified using an ARN) belonging to a different
account, for cross-account delivery.

=item *

An Amazon Kinesis Firehose delivery stream belonging to the same
account as the subscription filter, for same-account delivery.

=item *

An AWS Lambda function belonging to the same account as the
subscription filter, for same-account delivery.

=back




=head2 Distribution => Str

The method used to distribute log data to the destination. By default
log data is grouped by log stream, but the grouping can be set to
random for a more even distribution. This property is only applicable
when the destination is an Amazon Kinesis stream.

Valid values are: C<"Random">, C<"ByLogStream">

=head2 B<REQUIRED> FilterName => Str

A name for the subscription filter. If you are updating an existing
filter, you must specify the correct name in C<filterName>. Otherwise,
the call fails because you cannot associate a second filter with a log
group. To find the name of the filter currently associated with a log
group, use DescribeSubscriptionFilters.



=head2 B<REQUIRED> FilterPattern => Str

A filter pattern for subscribing to a filtered stream of log events.



=head2 B<REQUIRED> LogGroupName => Str

The name of the log group.



=head2 RoleArn => Str

The ARN of an IAM role that grants CloudWatch Logs permissions to
deliver ingested log events to the destination stream. You don't need
to provide the ARN when you are working with a logical destination for
cross-account delivery.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutSubscriptionFilter in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

