package Paws::ElasticBeanstalk::SingleInstanceHealth;
  use Moose;
  has ApplicationMetrics => (is => 'ro', isa => 'Paws::ElasticBeanstalk::ApplicationMetrics');
  has Causes => (is => 'ro', isa => 'ArrayRef[Str]');
  has Color => (is => 'ro', isa => 'Str');
  has HealthStatus => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has LaunchedAt => (is => 'ro', isa => 'Str');
  has System => (is => 'ro', isa => 'Paws::ElasticBeanstalk::SystemStatus');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::SingleInstanceHealth

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::SingleInstanceHealth object:

  $service_obj->Method(Att1 => { ApplicationMetrics => $value, ..., System => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::SingleInstanceHealth object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationMetrics

=head1 ATTRIBUTES

=head2 ApplicationMetrics => L<Paws::ElasticBeanstalk::ApplicationMetrics>

  

=head2 Causes => ArrayRef[Str]

  Represents the causes, which provide more information about the current
health status.

=head2 Color => Str

  Represents the color indicator that gives you information about the
health of the EC2 instance. For more information, see Health Colors and
Statuses.

=head2 HealthStatus => Str

  Returns the health status of the specified instance. For more
information, see Health Colors and Statuses.

=head2 InstanceId => Str

  The ID of the Amazon EC2 instance.

=head2 LaunchedAt => Str

  The time at which the EC2 instance was launched.

=head2 System => L<Paws::ElasticBeanstalk::SystemStatus>

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

