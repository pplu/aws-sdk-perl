package Paws::CloudWatch::MetricDataResult;
  use Moose;
  has Id => (is => 'ro', isa => 'Str');
  has Label => (is => 'ro', isa => 'Str');
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MessageData]');
  has StatusCode => (is => 'ro', isa => 'Str');
  has Timestamps => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Values => (is => 'ro', isa => 'ArrayRef[Num]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::MetricDataResult

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::MetricDataResult object:

  $service_obj->Method(Att1 => { Id => $value, ..., Values => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::MetricDataResult object:

  $result = $service_obj->Method(...);
  $result->Att1->Id

=head1 DESCRIPTION

A C<GetMetricData> call returns an array of C<MetricDataResult>
structures. Each of these structures includes the data points for that
metric, along with the timestamps of those data points and other
identifying information.

=head1 ATTRIBUTES


=head2 Id => Str

  The short name you specified to represent this metric.


=head2 Label => Str

  The human-readable label associated with the data.


=head2 Messages => ArrayRef[L<Paws::CloudWatch::MessageData>]

  A list of messages with additional information about the data returned.


=head2 StatusCode => Str

  The status of the returned data. C<Complete> indicates that all data
points in the requested time range were returned. C<PartialData> means
that an incomplete set of data points were returned. You can use the
C<NextToken> value that was returned and repeat your request to get
more data points. C<NextToken> is not returned if you are performing a
math expression. C<InternalError> indicates that an error occurred.
Retry your request using C<NextToken>, if present.


=head2 Timestamps => ArrayRef[Str|Undef]

  The timestamps for the data points, formatted in Unix timestamp format.
The number of timestamps always matches the number of values and the
value for Timestamps[x] is Values[x].


=head2 Values => ArrayRef[Num]

  The data points for the metric corresponding to C<Timestamps>. The
number of values always matches the number of timestamps and the
timestamp for Values[x] is Timestamps[x].



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

