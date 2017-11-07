package Paws::AutoScaling::CustomizedMetricSpecification;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::MetricDimension]');
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);
  has Statistic => (is => 'ro', isa => 'Str', required => 1);
  has Unit => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::CustomizedMetricSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::CustomizedMetricSpecification object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::CustomizedMetricSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

Configures a customized metric for a target tracking policy.

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[L<Paws::AutoScaling::MetricDimension>]

  The dimensions of the metric.


=head2 B<REQUIRED> MetricName => Str

  The name of the metric.


=head2 B<REQUIRED> Namespace => Str

  The namespace of the metric.


=head2 B<REQUIRED> Statistic => Str

  The statistic of the metric.


=head2 Unit => Str

  The unit of the metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

