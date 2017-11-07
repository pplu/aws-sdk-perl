package Paws::WAFRegional::TimeWindow;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::TimeWindow

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::TimeWindow object:

  $service_obj->Method(Att1 => { EndTime => $value, ..., StartTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::TimeWindow object:

  $result = $service_obj->Method(...);
  $result->Att1->EndTime

=head1 DESCRIPTION

In a GetSampledRequests request, the C<StartTime> and C<EndTime>
objects specify the time range for which you want AWS WAF to return a
sample of web requests.

In a GetSampledRequests response, the C<StartTime> and C<EndTime>
objects specify the time range for which AWS WAF actually returned a
sample of web requests. AWS WAF gets the specified number of requests
from among the first 5,000 requests that your AWS resource receives
during the specified time period. If your resource receives more than
5,000 requests during that period, AWS WAF stops sampling after the
5,000th request. In that case, C<EndTime> is the time that AWS WAF
received the 5,000th request.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndTime => Str

  The end of the time range from which you want C<GetSampledRequests> to
return a sample of the requests that your AWS resource received.
Specify the date and time in the following format:
C<"2016-09-27T14:50Z">. You can specify any time range in the previous
three hours.


=head2 B<REQUIRED> StartTime => Str

  The beginning of the time range from which you want
C<GetSampledRequests> to return a sample of the requests that your AWS
resource received. Specify the date and time in the following format:
C<"2016-09-27T14:50Z">. You can specify any time range in the previous
three hours.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

