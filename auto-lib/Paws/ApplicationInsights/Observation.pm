package Paws::ApplicationInsights::Observation;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has LineTime => (is => 'ro', isa => 'Str');
  has LogFilter => (is => 'ro', isa => 'Str');
  has LogGroup => (is => 'ro', isa => 'Str');
  has LogText => (is => 'ro', isa => 'Str');
  has MetricName => (is => 'ro', isa => 'Str');
  has MetricNamespace => (is => 'ro', isa => 'Str');
  has SourceARN => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Num');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationInsights::Observation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApplicationInsights::Observation object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApplicationInsights::Observation object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

Describes an anomaly or error with the application.

=head1 ATTRIBUTES


=head2 EndTime => Str

  The time when the observation ended, in epoch seconds.


=head2 Id => Str

  The ID of the observation type.


=head2 LineTime => Str

  The timestamp in the CloudWatch Logs that specifies when the matched
line occurred.


=head2 LogFilter => Str

  The log filter of the observation.


=head2 LogGroup => Str

  The log group name.


=head2 LogText => Str

  The log text of the observation.


=head2 MetricName => Str

  The name of the observation metric.


=head2 MetricNamespace => Str

  The namespace of the observation metric.


=head2 SourceARN => Str

  The source resource ARN of the observation.


=head2 SourceType => Str

  The source type of the observation.


=head2 StartTime => Str

  The time when the observation was first detected, in epoch seconds.


=head2 Unit => Str

  The unit of the source observation metric.


=head2 Value => Num

  The value of the source observation metric.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApplicationInsights>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

