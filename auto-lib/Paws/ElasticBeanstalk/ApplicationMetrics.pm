# Generated from default/object.tt
package Paws::ElasticBeanstalk::ApplicationMetrics;
  use Moo;
  use Types::Standard qw/Int/;
  use Paws::ElasticBeanstalk::Types qw/ElasticBeanstalk_Latency ElasticBeanstalk_StatusCodes/;
  has Duration => (is => 'ro', isa => Int);
  has Latency => (is => 'ro', isa => ElasticBeanstalk_Latency);
  has RequestCount => (is => 'ro', isa => Int);
  has StatusCodes => (is => 'ro', isa => ElasticBeanstalk_StatusCodes);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Latency' => {
                              'type' => 'ElasticBeanstalk_Latency',
                              'class' => 'Paws::ElasticBeanstalk::Latency'
                            },
               'StatusCodes' => {
                                  'class' => 'Paws::ElasticBeanstalk::StatusCodes',
                                  'type' => 'ElasticBeanstalk_StatusCodes'
                                },
               'RequestCount' => {
                                   'type' => 'Int'
                                 },
               'Duration' => {
                               'type' => 'Int'
                             }
             }
}
;
    return $Params_map;
  }


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


=head2 Latency => ElasticBeanstalk_Latency

  Represents the average latency for the slowest X percent of requests
over the last 10 seconds. Latencies are in seconds with one millisecond
resolution.


=head2 RequestCount => Int

  Average number of requests handled by the web server per second over
the last 10 seconds.


=head2 StatusCodes => ElasticBeanstalk_StatusCodes

  Represents the percentage of requests over the last 10 seconds that
resulted in each type of status code response.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

