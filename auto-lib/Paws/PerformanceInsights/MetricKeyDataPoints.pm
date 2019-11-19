# Generated from default/object.tt
package Paws::PerformanceInsights::MetricKeyDataPoints;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::PerformanceInsights::Types qw/PerformanceInsights_DataPoint PerformanceInsights_ResponseResourceMetricKey/;
  has DataPoints => (is => 'ro', isa => ArrayRef[PerformanceInsights_DataPoint]);
  has Key => (is => 'ro', isa => PerformanceInsights_ResponseResourceMetricKey);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Key' => {
                          'class' => 'Paws::PerformanceInsights::ResponseResourceMetricKey',
                          'type' => 'PerformanceInsights_ResponseResourceMetricKey'
                        },
               'DataPoints' => {
                                 'class' => 'Paws::PerformanceInsights::DataPoint',
                                 'type' => 'ArrayRef[PerformanceInsights_DataPoint]'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::MetricKeyDataPoints

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PerformanceInsights::MetricKeyDataPoints object:

  $service_obj->Method(Att1 => { DataPoints => $value, ..., Key => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PerformanceInsights::MetricKeyDataPoints object:

  $result = $service_obj->Method(...);
  $result->Att1->DataPoints

=head1 DESCRIPTION

A time-ordered series of data points, correpsonding to a dimension of a
Performance Insights metric.

=head1 ATTRIBUTES


=head2 DataPoints => ArrayRef[PerformanceInsights_DataPoint]

  An array of timestamp-value pairs, representing measurements over a
period of time.


=head2 Key => PerformanceInsights_ResponseResourceMetricKey

  The dimension(s) to which the data points apply.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

