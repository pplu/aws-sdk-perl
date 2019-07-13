package Paws::SageMaker::MetricData;
  use Moose;
  has MetricName => (is => 'ro', isa => 'Str');
  has Timestamp => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::MetricData

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::MetricData object:

  $service_obj->Method(Att1 => { MetricName => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::MetricData object:

  $result = $service_obj->Method(...);
  $result->Att1->MetricName

=head1 DESCRIPTION

The name, value, and date and time of a metric that was emitted to
Amazon CloudWatch.

=head1 ATTRIBUTES


=head2 MetricName => Str

  The name of the metric.


=head2 Timestamp => Str

  The date and time that the algorithm emitted the metric.


=head2 Value => Num

  The value of the metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

