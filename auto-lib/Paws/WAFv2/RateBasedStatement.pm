package Paws::WAFv2::RateBasedStatement;
  use Moose;
  has AggregateKeyType => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int', required => 1);
  has ScopeDownStatement => (is => 'ro', isa => 'Paws::WAFv2::Statement');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::RateBasedStatement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::RateBasedStatement object:

  $service_obj->Method(Att1 => { AggregateKeyType => $value, ..., ScopeDownStatement => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::RateBasedStatement object:

  $result = $service_obj->Method(...);
  $result->Att1->AggregateKeyType

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

A rate-based rule tracks the rate of requests for each originating IP
address, and triggers the rule action when the rate exceeds a limit
that you specify on the number of requests in any 5-minute time span.
You can use this to put a temporary block on requests from an IP
address that is sending excessive requests.

When the rule action triggers, AWS WAF blocks additional requests from
the IP address until the request rate falls below the limit.

You can optionally nest another statement inside the rate-based
statement, to narrow the scope of the rule so that it only counts
requests that match the nested statement. For example, based on recent
requests that you have seen from an attacker, you might create a
rate-based rule with a nested AND rule statement that contains the
following nested statements:

=over

=item *

An IP match statement with an IP set that specified the address
192.0.2.44.

=item *

A string match statement that searches in the User-Agent header for the
string BadBot.

=back

In this rate-based rule, you also define a rate limit. For this
example, the rate limit is 1,000. Requests that meet both of the
conditions in the statements are counted. If the count exceeds 1,000
requests per five minutes, the rule action triggers. Requests that do
not meet both conditions are not counted towards the rate limit and are
not affected by this rule.

You cannot nest a C<RateBasedStatement>, for example for use inside a
C<NotStatement> or C<OrStatement>. It can only be referenced as a
top-level statement within a rule.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AggregateKeyType => Str

  Setting that indicates how to aggregate the request counts. Currently,
you must set this to C<IP>. The request counts are aggregated on IP
addresses.


=head2 B<REQUIRED> Limit => Int

  The limit on requests per 5-minute period for a single originating IP
address. If the statement includes a C<ScopDownStatement>, this limit
is applied only to the requests that match the statement.


=head2 ScopeDownStatement => L<Paws::WAFv2::Statement>

  An optional nested statement that narrows the scope of the rate-based
statement to matching web requests. This can be any nestable statement,
and you can nest statements at any level below this scope-down
statement.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

