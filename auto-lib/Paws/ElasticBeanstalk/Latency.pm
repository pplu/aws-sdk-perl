package Paws::ElasticBeanstalk::Latency;
  use Moose;
  has P10 => (is => 'ro', isa => 'Num');
  has P50 => (is => 'ro', isa => 'Num');
  has P75 => (is => 'ro', isa => 'Num');
  has P85 => (is => 'ro', isa => 'Num');
  has P90 => (is => 'ro', isa => 'Num');
  has P95 => (is => 'ro', isa => 'Num');
  has P99 => (is => 'ro', isa => 'Num');
  has P999 => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::Latency

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::Latency object:

  $service_obj->Method(Att1 => { P10 => $value, ..., P999 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::Latency object:

  $result = $service_obj->Method(...);
  $result->Att1->P10

=head1 DESCRIPTION

Represents the average latency for the slowest X percent of requests
over the last 10 seconds.

=head1 ATTRIBUTES


=head2 P10 => Num

  The average latency for the slowest 90 percent of requests over the
last 10 seconds.


=head2 P50 => Num

  The average latency for the slowest 50 percent of requests over the
last 10 seconds.


=head2 P75 => Num

  The average latency for the slowest 25 percent of requests over the
last 10 seconds.


=head2 P85 => Num

  The average latency for the slowest 15 percent of requests over the
last 10 seconds.


=head2 P90 => Num

  The average latency for the slowest 10 percent of requests over the
last 10 seconds.


=head2 P95 => Num

  The average latency for the slowest 5 percent of requests over the last
10 seconds.


=head2 P99 => Num

  The average latency for the slowest 1 percent of requests over the last
10 seconds.


=head2 P999 => Num

  The average latency for the slowest 0.1 percent of requests over the
last 10 seconds.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

