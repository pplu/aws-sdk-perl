package Paws::ELBv2::TargetGroupAttribute;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::TargetGroupAttribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::TargetGroupAttribute object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::TargetGroupAttribute object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Information about a target group attribute.

=head1 ATTRIBUTES


=head2 Key => Str

  The name of the attribute.

The following attribute is supported by both Application Load Balancers
and Network Load Balancers:

=over

=item *

C<deregistration_delay.timeout_seconds> - The amount of time, in
seconds, for Elastic Load Balancing to wait before changing the state
of a deregistering target from C<draining> to C<unused>. The range is
0-3600 seconds. The default value is 300 seconds. If the target is a
Lambda function, this attribute is not supported.

=back

The following attributes are supported by Application Load Balancers if
the target is not a Lambda function:

=over

=item *

C<slow_start.duration_seconds> - The time period, in seconds, during
which a newly registered target receives a linearly increasing share of
the traffic to the target group. After this time period ends, the
target receives its full share of traffic. The range is 30-900 seconds
(15 minutes). Slow start mode is disabled by default.

=item *

C<stickiness.enabled> - Indicates whether sticky sessions are enabled.
The value is C<true> or C<false>. The default is C<false>.

=item *

C<stickiness.type> - The type of sticky sessions. The possible value is
C<lb_cookie>.

=item *

C<stickiness.lb_cookie.duration_seconds> - The time period, in seconds,
during which requests from a client should be routed to the same
target. After this time period expires, the load balancer-generated
cookie is considered stale. The range is 1 second to 1 week (604800
seconds). The default value is 1 day (86400 seconds).

=back

The following attribute is supported only if the target is a Lambda
function.

=over

=item *

C<lambda.multi_value_headers.enabled> - Indicates whether the request
and response headers exchanged between the load balancer and the Lambda
function include arrays of values or strings. The value is C<true> or
C<false>. The default is C<false>. If the value is C<false> and the
request contains a duplicate header field name or query parameter key,
the load balancer uses the last value sent by the client.

=back

The following attribute is supported only by Network Load Balancers:

=over

=item *

C<proxy_protocol_v2.enabled> - Indicates whether Proxy Protocol version
2 is enabled. The value is C<true> or C<false>. The default is
C<false>.

=back



=head2 Value => Str

  The value of the attribute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

