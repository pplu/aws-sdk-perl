package Paws::CloudWatch::Datapoint;
  use Moose;
  has Average => (is => 'ro', isa => 'Num');
  has ExtendedStatistics => (is => 'ro', isa => 'Paws::CloudWatch::DatapointValueMap');
  has Maximum => (is => 'ro', isa => 'Num');
  has Minimum => (is => 'ro', isa => 'Num');
  has SampleCount => (is => 'ro', isa => 'Num');
  has Sum => (is => 'ro', isa => 'Num');
  has Timestamp => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::Datapoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::Datapoint object:

  $service_obj->Method(Att1 => { Average => $value, ..., Unit => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::Datapoint object:

  $result = $service_obj->Method(...);
  $result->Att1->Average

=head1 DESCRIPTION

Encapsulates the statistical data that CloudWatch computes from metric
data.

=head1 ATTRIBUTES


=head2 Average => Num

  The average of the metric values that correspond to the data point.


=head2 ExtendedStatistics => L<Paws::CloudWatch::DatapointValueMap>

  The percentile statistic for the data point.


=head2 Maximum => Num

  The maximum metric value for the data point.


=head2 Minimum => Num

  The minimum metric value for the data point.


=head2 SampleCount => Num

  The number of metric values that contributed to the aggregate value of
this data point.


=head2 Sum => Num

  The sum of the metric values for the data point.


=head2 Timestamp => Str

  The time stamp used for the data point.


=head2 Unit => Str

  The standard unit for the data point.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

