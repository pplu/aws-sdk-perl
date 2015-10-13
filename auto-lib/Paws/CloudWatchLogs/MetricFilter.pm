package Paws::CloudWatchLogs::MetricFilter;
  use Moose;
  has creationTime => (is => 'ro', isa => 'Int');
  has filterName => (is => 'ro', isa => 'Str');
  has filterPattern => (is => 'ro', isa => 'Str');
  has metricTransformations => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::MetricTransformation]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::MetricFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatchLogs::MetricFilter object:

  $service_obj->Method(Att1 => { creationTime => $value, ..., metricTransformations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatchLogs::MetricFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->creationTime

=head1 DESCRIPTION

Metric filters can be used to express how Amazon CloudWatch Logs would
extract metric observations from ingested log events and transform them
to metric data in a CloudWatch metric.

=head1 ATTRIBUTES

=head2 creationTime => Int

  

=head2 filterName => Str

  

=head2 filterPattern => Str

  

=head2 metricTransformations => ArrayRef[L<Paws::CloudWatchLogs::MetricTransformation>]

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

