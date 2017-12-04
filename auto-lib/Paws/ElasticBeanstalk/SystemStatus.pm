package Paws::ElasticBeanstalk::SystemStatus;
  use Moose;
  has CPUUtilization => (is => 'ro', isa => 'Paws::ElasticBeanstalk::CPUUtilization');
  has LoadAverage => (is => 'ro', isa => 'ArrayRef[Num]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::SystemStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::SystemStatus object:

  $service_obj->Method(Att1 => { CPUUtilization => $value, ..., LoadAverage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::SystemStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->CPUUtilization

=head1 DESCRIPTION

CPU utilization and load average metrics for an Amazon EC2 instance.

=head1 ATTRIBUTES


=head2 CPUUtilization => L<Paws::ElasticBeanstalk::CPUUtilization>

  CPU utilization metrics for the instance.


=head2 LoadAverage => ArrayRef[Num]

  Load average in the last 1-minute, 5-minute, and 15-minute periods. For
more information, see Operating System Metrics
(http://docs.aws.amazon.com/elasticbeanstalk/latest/dg/health-enhanced-metrics.html#health-enhanced-metrics-os).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

