
package Paws::CloudWatch::GetMetricData;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has MaxDatapoints => (is => 'ro', isa => 'Int');
  has MetricDataQueries => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricDataQuery]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');
  has ScanBy => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMetricData');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::GetMetricDataOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetMetricDataResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::GetMetricData - Arguments for method GetMetricData on L<Paws::CloudWatch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMetricData on the 
L<Amazon CloudWatch|Paws::CloudWatch> service. Use the attributes of this class
as arguments to method GetMetricData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMetricData.

As an example:

  $service_obj->GetMetricData(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

The time stamp indicating the latest data to be returned.



=head2 MaxDatapoints => Int

The maximum number of data points the request should return before
paginating. If you omit this, the default of 100,800 is used.



=head2 B<REQUIRED> MetricDataQueries => ArrayRef[L<Paws::CloudWatch::MetricDataQuery>]

The metric queries to be returned. A single C<GetMetricData> call can
include as many as 100 C<MetricDataQuery> structures. Each of these
structures can specify either a metric to retrieve, or a math
expression to perform on retrieved data.



=head2 NextToken => Str

Include this value, if it was returned by the previous call, to get the
next set of data points.



=head2 ScanBy => Str

The order in which data points should be returned.
C<TimestampDescending> returns the newest data first and paginates when
the C<MaxDatapoints> limit is reached. C<TimestampAscending> returns
the oldest data first and paginates when the C<MaxDatapoints> limit is
reached.

Valid values are: C<"TimestampDescending">, C<"TimestampAscending">

=head2 B<REQUIRED> StartTime => Str

The time stamp indicating the earliest data to be returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMetricData in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

