package Paws::CloudWatch::MetricStat;
  use Moose;
  has Metric => (is => 'ro', isa => 'Paws::CloudWatch::Metric', required => 1);
  has Period => (is => 'ro', isa => 'Int', required => 1);
  has Stat => (is => 'ro', isa => 'Str', required => 1);
  has Unit => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::MetricStat

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::MetricStat object:

  $service_obj->Method(Att1 => { Metric => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::MetricStat object:

  $result = $service_obj->Method(...);
  $result->Att1->Metric

=head1 DESCRIPTION

This structure defines the metric to be returned, along with the
statistics, period, and units.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Metric => L<Paws::CloudWatch::Metric>

  The metric to return, including the metric name, namespace, and
dimensions.


=head2 B<REQUIRED> Period => Int

  The period, in seconds, to use when retrieving the metric.


=head2 B<REQUIRED> Stat => Str

  The statistic to return. It can include any CloudWatch statistic or
extended statistic.


=head2 Unit => Str

  The unit to use for the returned data points.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

