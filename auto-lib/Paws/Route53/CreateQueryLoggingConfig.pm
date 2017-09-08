
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

Paws::Route53::CreateQueryLoggingConfig - Arguments for method CreateQueryLoggingConfig on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateQueryLoggingConfig on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method CreateQueryLoggingConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateQueryLoggingConfig.

As an example:

  $service_obj->CreateQueryLoggingConfig(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CloudWatchLogsLogGroupArn => Str

The Amazon Resource Name (ARN) for the log group that you want to
Amazon Route 53 to send query logs to. This is the format of the ARN:

arn:aws:logs:I<region>:I<account-id>:log-group:I<log_group_name>

To get the ARN for a log group, you can use the CloudWatch console, the
DescribeLogGroups API action, the describe-log-groups command, or the
applicable command in one of the AWS SDKs.



=head2 B<REQUIRED> HostedZoneId => Str

The ID of the hosted zone that you want to log queries for. You can log
queries only for public hosted zones.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateQueryLoggingConfig in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

