package Paws::ElasticBeanstalk::StatusCodes;
  use Moose;
  has Status2xx => (is => 'ro', isa => 'Int');
  has Status3xx => (is => 'ro', isa => 'Int');
  has Status4xx => (is => 'ro', isa => 'Int');
  has Status5xx => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::StatusCodes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ElasticBeanstalk::StatusCodes object:

  $service_obj->Method(Att1 => { Status2xx => $value, ..., Status5xx => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ElasticBeanstalk::StatusCodes object:

  $result = $service_obj->Method(...);
  $result->Att1->Status2xx

=head1 DESCRIPTION

Represents the percentage of requests over the last 10 seconds that
resulted in each type of status code response. For more information,
see Status Code Definitions
(http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html).

=head1 ATTRIBUTES


=head2 Status2xx => Int

  The percentage of requests over the last 10 seconds that resulted in a
2xx (200, 201, etc.) status code.


=head2 Status3xx => Int

  The percentage of requests over the last 10 seconds that resulted in a
3xx (300, 301, etc.) status code.


=head2 Status4xx => Int

  The percentage of requests over the last 10 seconds that resulted in a
4xx (400, 401, etc.) status code.


=head2 Status5xx => Int

  The percentage of requests over the last 10 seconds that resulted in a
5xx (500, 501, etc.) status code.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

