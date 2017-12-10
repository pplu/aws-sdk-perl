package Paws::WAFRegional::RateBasedRule;
  use Moose;
  has MatchPredicates => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::Predicate]', required => 1);
  has MetricName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has RateKey => (is => 'ro', isa => 'Str', required => 1);
  has RateLimit => (is => 'ro', isa => 'Int', required => 1);
  has RuleId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::RateBasedRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::RateBasedRule object:

  $service_obj->Method(Att1 => { MatchPredicates => $value, ..., RuleId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::RateBasedRule object:

  $result = $service_obj->Method(...);
  $result->Att1->MatchPredicates

=head1 DESCRIPTION

A C<RateBasedRule> is identical to a regular Rule, with one addition: a
C<RateBasedRule> counts the number of requests that arrive from a
specified IP address every five minutes. For example, based on recent
requests that you've seen from an attacker, you might create a
C<RateBasedRule> that includes the following conditions:

=over

=item *

The requests come from 192.0.2.44.

=item *

They contain the value C<BadBot> in the C<User-Agent> header.

=back

In the rule, you also define the rate limit as 15,000.

Requests that meet both of these conditions and exceed 15,000 requests
every five minutes trigger the rule's action (block or count), which is
defined in the web ACL.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MatchPredicates => ArrayRef[L<Paws::WAFRegional::Predicate>]

  The C<Predicates> object contains one C<Predicate> element for each
ByteMatchSet, IPSet, or SqlInjectionMatchSet object that you want to
include in a C<RateBasedRule>.


=head2 MetricName => Str

  A friendly name or description for the metrics for a C<RateBasedRule>.
The name can contain only alphanumeric characters (A-Z, a-z, 0-9); the
name can't contain whitespace. You can't change the name of the metric
after you create the C<RateBasedRule>.


=head2 Name => Str

  A friendly name or description for a C<RateBasedRule>. You can't change
the name of a C<RateBasedRule> after you create it.


=head2 B<REQUIRED> RateKey => Str

  The field that AWS WAF uses to determine if requests are likely
arriving from single source and thus subject to rate monitoring. The
only valid value for C<RateKey> is C<IP>. C<IP> indicates that requests
arriving from the same IP address are subject to the C<RateLimit> that
is specified in the C<RateBasedRule>.


=head2 B<REQUIRED> RateLimit => Int

  The maximum number of requests, which have an identical value in the
field specified by the C<RateKey>, allowed in a five-minute period. If
the number of requests exceeds the C<RateLimit> and the other
predicates specified in the rule are also met, AWS WAF triggers the
action that is specified for this rule.


=head2 B<REQUIRED> RuleId => Str

  A unique identifier for a C<RateBasedRule>. You use C<RuleId> to get
more information about a C<RateBasedRule> (see GetRateBasedRule),
update a C<RateBasedRule> (see UpdateRateBasedRule), insert a
C<RateBasedRule> into a C<WebACL> or delete one from a C<WebACL> (see
UpdateWebACL), or delete a C<RateBasedRule> from AWS WAF (see
DeleteRateBasedRule).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

