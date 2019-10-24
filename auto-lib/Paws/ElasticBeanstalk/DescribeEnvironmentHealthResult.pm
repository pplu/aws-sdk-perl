# Generated from callresult_class.tt

package Paws::ElasticBeanstalk::DescribeEnvironmentHealthResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_ApplicationMetrics ElasticBeanstalk_InstanceHealthSummary/;
  has ApplicationMetrics => (is => 'ro', isa => ElasticBeanstalk_ApplicationMetrics);
  has Causes => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has Color => (is => 'ro', isa => Str);
  has EnvironmentName => (is => 'ro', isa => Str);
  has HealthStatus => (is => 'ro', isa => Str);
  has InstancesHealth => (is => 'ro', isa => ElasticBeanstalk_InstanceHealthSummary);
  has RefreshedAt => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'HealthStatus' => {
                                   'type' => 'Str'
                                 },
               'EnvironmentName' => {
                                      'type' => 'Str'
                                    },
               'Status' => {
                             'type' => 'Str'
                           },
               'ApplicationMetrics' => {
                                         'class' => 'Paws::ElasticBeanstalk::ApplicationMetrics',
                                         'type' => 'ElasticBeanstalk_ApplicationMetrics'
                                       },
               'Color' => {
                            'type' => 'Str'
                          },
               'Causes' => {
                             'type' => 'ArrayRef[Str|Undef]'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'InstancesHealth' => {
                                      'class' => 'Paws::ElasticBeanstalk::InstanceHealthSummary',
                                      'type' => 'ElasticBeanstalk_InstanceHealthSummary'
                                    },
               'RefreshedAt' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeEnvironmentHealthResult

=head1 ATTRIBUTES


=head2 ApplicationMetrics => ElasticBeanstalk_ApplicationMetrics

Application request metrics for the environment.


=head2 Causes => ArrayRef[Str|Undef]

Descriptions of the data that contributed to the environment's current
health status.


=head2 Color => Str

The health color
(https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html)
of the environment.


=head2 EnvironmentName => Str

The environment's name.


=head2 HealthStatus => Str

The health status
(https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-status.html)
of the environment. For example, C<Ok>.


=head2 InstancesHealth => ElasticBeanstalk_InstanceHealthSummary

Summary health information for the instances in the environment.


=head2 RefreshedAt => Str

The date and time that the health information was retrieved.


=head2 Status => Str

The environment's operational status. C<Ready>, C<Launching>,
C<Updating>, C<Terminating>, or C<Terminated>.

Valid values are: C<"Green">, C<"Yellow">, C<"Red">, C<"Grey">
=head2 _request_id => Str


=cut

