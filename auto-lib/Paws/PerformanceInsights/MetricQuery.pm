package Paws::PerformanceInsights::MetricQuery;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::PerformanceInsights::MetricQueryFilterMap');
  has GroupBy => (is => 'ro', isa => 'Paws::PerformanceInsights::DimensionGroup');
  has Metric => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::MetricQuery

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::PerformanceInsights::MetricQuery object:

  $service_obj->Method(Att1 => { Filter => $value, ..., Metric => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::PerformanceInsights::MetricQuery object:

  $result = $service_obj->Method(...);
  $result->Att1->Filter

=head1 DESCRIPTION

A single query to be processed. You must provide the metric to query.
If no other parameters are specified, Performance Insights returns all
of the data points for that metric. You can optionally request that the
data points be aggregated by dimension group ( C<GroupBy>), and return
only those data points that match your criteria (C<Filter>).

=head1 ATTRIBUTES


=head2 Filter => L<Paws::PerformanceInsights::MetricQueryFilterMap>

  One or more filters to apply in the request. Restrictions:

=over

=item *

Any number of filters by the same dimension, as specified in the
C<GroupBy> parameter.

=item *

A single filter for any other dimension in this dimension group.

=back



=head2 GroupBy => L<Paws::PerformanceInsights::DimensionGroup>

  A specification for how to aggregate the data points from a query
result. You must specify a valid dimension group. Performance Insights
will return all of the dimensions within that group, unless you provide
the names of specific dimensions within that group. You can also
request that Performance Insights return a limited number of values for
a dimension.


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

