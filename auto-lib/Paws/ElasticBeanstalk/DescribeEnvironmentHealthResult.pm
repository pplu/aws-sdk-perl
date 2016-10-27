
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





=head2 Causes => ArrayRef[Str|Undef]

Returns potential causes for the reported status.



=head2 Color => Str

Returns the color indicator that tells you information about the health
of the environment. For more information, see Health Colors and
Statuses.



=head2 EnvironmentName => Str

The AWS Elastic Beanstalk environment name.



=head2 HealthStatus => Str

Contains the response body with information about the health of the
environment.



=head2 InstancesHealth => L<Paws::ElasticBeanstalk::InstanceHealthSummary>





=head2 RefreshedAt => Str

The date and time the information was last refreshed.



=head2 Status => Str

Returns the health status value of the environment. For more
information, see Health Colors and Statuses.

Valid values are: C<"Green">, C<"Yellow">, C<"Red">, C<"Grey">


=cut

