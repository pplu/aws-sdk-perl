
package Paws::ElasticBeanstalk::DescribeEnvironmentHealthResult;
  use Moose;
  has ApplicationMetrics => (is => 'ro', isa => 'Paws::ElasticBeanstalk::ApplicationMetrics');
  has Causes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Color => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has HealthStatus => (is => 'ro', isa => 'Str');
  has InstancesHealth => (is => 'ro', isa => 'Paws::ElasticBeanstalk::InstanceHealthSummary');
  has RefreshedAt => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeEnvironmentHealthResult

=head1 ATTRIBUTES


=head2 ApplicationMetrics => L<Paws::ElasticBeanstalk::ApplicationMetrics>

Application request metrics for the environment.


=head2 Causes => ArrayRef[Str|Undef]

Descriptions of the data that contributed to the environment's current
health status.


=head2 Color => Str

The health color
(http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html)
of the environment.


=head2 EnvironmentName => Str

The environment's name.


=head2 HealthStatus => Str

The health status
(http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html)
of the environment. For example, C<Ok>.


=head2 InstancesHealth => L<Paws::ElasticBeanstalk::InstanceHealthSummary>

Summary health information for the instances in the environment.


=head2 RefreshedAt => Str

The date and time that the health information was retrieved.


=head2 Status => Str

The environment's operational status. C<Ready>, C<Launching>,
C<Updating>, C<Terminating>, or C<Terminated>.

Valid values are: C<"Green">, C<"Yellow">, C<"Red">, C<"Grey">
=head2 _request_id => Str


=cut

