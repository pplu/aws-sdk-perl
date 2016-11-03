package Paws::CloudWatchLogs::MetricTransformation;
  use Moose;
  has DefaultValue => (is => 'ro', isa => 'Num', request_name => 'defaultValue', traits => ['NameInRequest']);
  has MetricName => (is => 'ro', isa => 'Str', request_name => 'metricName', traits => ['NameInRequest'], required => 1);
  has MetricNamespace => (is => 'ro', isa => 'Str', request_name => 'metricNamespace', traits => ['NameInRequest'], required => 1);
  has MetricValue => (is => 'ro', isa => 'Str', request_name => 'metricValue', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::MetricTransformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::MetricTransformation object:

  $service_obj->Method(Att1 => { DefaultValue => $value, ..., MetricValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::MetricTransformation object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultValue

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 DefaultValue => Num

  (Optional) A default value to emit when a filter pattern does not match
a log event. Can be null.


=head2 B<REQUIRED> MetricName => Str

  Name of the metric.


=head2 B<REQUIRED> MetricNamespace => Str

  Namespace to which the metric belongs.


=head2 B<REQUIRED> MetricValue => Str

  A string representing a value to publish to this metric when a filter
pattern matches a log event.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

