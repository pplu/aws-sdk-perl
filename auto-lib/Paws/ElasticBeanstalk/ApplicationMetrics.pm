package Paws::ElasticBeanstalk::ApplicationMetrics;
  use Moose;
  has Duration => (is => 'ro', isa => 'Int');
  has Latency => (is => 'ro', isa => 'Paws::ElasticBeanstalk::Latency');
  has RequestCount => (is => 'ro', isa => 'Int');
  has StatusCodes => (is => 'ro', isa => 'Paws::ElasticBeanstalk::StatusCodes');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ApplicationMetrics

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::ApplicationMetrics object:

  $service_obj->Method(Att1 => { Duration => $value, ..., StatusCodes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::ApplicationMetrics object:

  $result = $service_obj->Method(...);
  $result->Att1->Duration

=head1 DESCRIPTION

Application request metrics for an AWS Elastic Beanstalk environment.

=head1 ATTRIBUTES


=head2 Duration => Int

  The amount of time that the metrics cover (usually 10 seconds). For
example, you might have 5 requests (C<request_count>) within the most
recent time slice of 10 seconds (C<duration>).


=head2 Latency => L<Paws::ElasticBeanstalk::Latency>

  Represents the average latency for the slowest X percent of requests
over the last 10 seconds. Latencies are in seconds with one millisecond
resolution.


=head2 RequestCount => Int

  Average number of requests handled by the web server per second over
the last 10 seconds.


=head2 StatusCodes => L<Paws::ElasticBeanstalk::StatusCodes>

  Represents the percentage of requests over the last 10 seconds that
resulted in each type of status code response.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

