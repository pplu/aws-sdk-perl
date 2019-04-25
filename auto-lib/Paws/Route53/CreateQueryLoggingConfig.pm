
package Paws::Route53::CreateQueryLoggingConfig;
  use Moose;
  has CloudWatchLogsLogGroupArn => (is => 'ro', isa => 'Str', required => 1);
  has HostedZoneId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateQueryLoggingConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/queryloggingconfig');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::CreateQueryLoggingConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateQueryLoggingConfig - Arguments for method CreateQueryLoggingConfig on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateQueryLoggingConfig on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method CreateQueryLoggingConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateQueryLoggingConfig.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $CreateQueryLoggingConfigResponse = $route53->CreateQueryLoggingConfig(
      CloudWatchLogsLogGroupArn => 'MyCloudWatchLogsLogGroupArn',
      HostedZoneId              => 'MyResourceId',

    );

    # Results:
    my $Location = $CreateQueryLoggingConfigResponse->Location;
    my $QueryLoggingConfig =
      $CreateQueryLoggingConfigResponse->QueryLoggingConfig;

    # Returns a L<Paws::Route53::CreateQueryLoggingConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/CreateQueryLoggingConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CloudWatchLogsLogGroupArn => Str

The Amazon Resource Name (ARN) for the log group that you want to
Amazon Route 53 to send query logs to. This is the format of the ARN:

arn:aws:logs:I<region>:I<account-id>:log-group:I<log_group_name>

To get the ARN for a log group, you can use the CloudWatch console, the
DescribeLogGroups
(http://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_DescribeLogGroups.html)
API action, the describe-log-groups
(http://docs.aws.amazon.com/cli/latest/reference/logs/describe-log-groups.html)
command, or the applicable command in one of the AWS SDKs.



=head2 B<REQUIRED> HostedZoneId => Str

The ID of the hosted zone that you want to log queries for. You can log
queries only for public hosted zones.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateQueryLoggingConfig in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

