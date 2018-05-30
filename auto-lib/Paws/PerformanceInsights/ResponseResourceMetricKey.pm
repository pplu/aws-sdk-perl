package Paws::PerformanceInsights::ResponseResourceMetricKey;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'Paws::PerformanceInsights::DimensionMap');
  has Metric => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::ResponseResourceMetricKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PerformanceInsights::ResponseResourceMetricKey object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., Metric => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PerformanceInsights::ResponseResourceMetricKey object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

An object describing a Performance Insights metric and one or more
dimensions for that metric.

=head1 ATTRIBUTES


=head2 Dimensions => L<Paws::PerformanceInsights::DimensionMap>

  The valid dimensions for the metric.


=head2 B<REQUIRED> Metric => Str

  The name of a Performance Insights metric to be measured.

Valid values for C<Metric> are:

=over

=item *

C<db.load.avg> - a scaled representation of the number of active
sessions for the database engine.

=item *

C<db.sampledload.avg> - the raw number of active sessions for the
database engine.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::PerformanceInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

