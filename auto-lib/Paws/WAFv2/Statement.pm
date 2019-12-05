package Paws::WAFv2::Statement;
  use Moose;
  has AndStatement => (is => 'ro', isa => 'Paws::WAFv2::AndStatement');
  has ByteMatchStatement => (is => 'ro', isa => 'Paws::WAFv2::ByteMatchStatement');
  has GeoMatchStatement => (is => 'ro', isa => 'Paws::WAFv2::GeoMatchStatement');
  has IPSetReferenceStatement => (is => 'ro', isa => 'Paws::WAFv2::IPSetReferenceStatement');
  has ManagedRuleGroupStatement => (is => 'ro', isa => 'Paws::WAFv2::ManagedRuleGroupStatement');
  has NotStatement => (is => 'ro', isa => 'Paws::WAFv2::NotStatement');
  has OrStatement => (is => 'ro', isa => 'Paws::WAFv2::OrStatement');
  has RateBasedStatement => (is => 'ro', isa => 'Paws::WAFv2::RateBasedStatement');
  has RegexPatternSetReferenceStatement => (is => 'ro', isa => 'Paws::WAFv2::RegexPatternSetReferenceStatement');
  has RuleGroupReferenceStatement => (is => 'ro', isa => 'Paws::WAFv2::RuleGroupReferenceStatement');
  has SizeConstraintStatement => (is => 'ro', isa => 'Paws::WAFv2::SizeConstraintStatement');
  has SqliMatchStatement => (is => 'ro', isa => 'Paws::WAFv2::SqliMatchStatement');
  has XssMatchStatement => (is => 'ro', isa => 'Paws::WAFv2::XssMatchStatement');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFv2::Statement

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFv2::Statement object:

  $service_obj->Method(Att1 => { AndStatement => $value, ..., XssMatchStatement => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFv2::Statement object:

  $result = $service_obj->Method(...);
  $result->Att1->AndStatement

=head1 DESCRIPTION

This is the latest version of B<AWS WAF>, named AWS WAFV2, released in
November, 2019. For information, including how to migrate your AWS WAF
resources from the prior release, see the AWS WAF Developer Guide
(https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html).

The processing guidance for a Rule, used by AWS WAF to determine
whether a web request matches the rule.

=head1 ATTRIBUTES


=head2 AndStatement => L<Paws::WAFv2::AndStatement>

  A logical rule statement used to combine other rule statements with AND
logic. You provide more than one Statement within the C<AndStatement>.


=head2 ByteMatchStatement => L<Paws::WAFv2::ByteMatchStatement>

  A rule statement that defines a string match search for AWS WAF to
apply to web requests. The byte match statement provides the bytes to
search for, the location in requests that you want AWS WAF to search,
and other settings. The bytes to search for are typically a string that
corresponds with ASCII characters. In the AWS WAF console and the
developer guide, this is refered to as a string match statement.


=head2 GeoMatchStatement => L<Paws::WAFv2::GeoMatchStatement>

  A rule statement used to identify web requests based on country of
origin.


=head2 IPSetReferenceStatement => L<Paws::WAFv2::IPSetReferenceStatement>

  A rule statement used to detect web requests coming from particular IP
addresses or address ranges. To use this, create an IPSet that
specifies the addresses you want to detect, then use the ARN of that
set in this statement. To create an IP set, see CreateIPSet.

Each IP set rule statement references an IP set. You create and
maintain the set independent of your rules. This allows you to use the
single set in multiple rules. When you update the referenced set, AWS
WAF automatically updates all rules that reference it.


=head2 ManagedRuleGroupStatement => L<Paws::WAFv2::ManagedRuleGroupStatement>

  A rule statement used to run the rules that are defined in a managed
rule group. To use this, provide the vendor name and the name of the
rule group in this statement. You can retrieve the required names by
calling ListAvailableManagedRuleGroups.

You can't nest a C<ManagedRuleGroupStatement>, for example for use
inside a C<NotStatement> or C<OrStatement>. It can only be referenced
as a top-level statement within a rule.


=head2 NotStatement => L<Paws::WAFv2::NotStatement>

  A logical rule statement used to negate the results of another rule
statement. You provide one Statement within the C<NotStatement>.


=head2 OrStatement => L<Paws::WAFv2::OrStatement>

  A logical rule statement used to combine other rule statements with OR
logic. You provide more than one Statement within the C<OrStatement>.


=head2 RateBasedStatement => L<Paws::WAFv2::RateBasedStatement>

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


=head2 RegexPatternSetReferenceStatement => L<Paws::WAFv2::RegexPatternSetReferenceStatement>

  A rule statement used to search web request components for matches with
regular expressions. To use this, create a RegexPatternSet that
specifies the expressions that you want to detect, then use the ARN of
that set in this statement. A web request matches the pattern set rule
statement if the request component matches any of the patterns in the
set. To create a regex pattern set, see CreateRegexPatternSet.

Each regex pattern set rule statement references a regex pattern set.
You create and maintain the set independent of your rules. This allows
you to use the single set in multiple rules. When you update the
referenced set, AWS WAF automatically updates all rules that reference
it.


=head2 RuleGroupReferenceStatement => L<Paws::WAFv2::RuleGroupReferenceStatement>

  A rule statement used to run the rules that are defined in a RuleGroup.
To use this, create a rule group with your rules, then provide the ARN
of the rule group in this statement.

You cannot nest a C<RuleGroupReferenceStatement>, for example for use
inside a C<NotStatement> or C<OrStatement>. It can only be referenced
as a top-level statement within a rule.


=head2 SizeConstraintStatement => L<Paws::WAFv2::SizeConstraintStatement>

  A rule statement that compares a number of bytes against the size of a
request component, using a comparison operator, such as greater than
(E<gt>) or less than (E<lt>). For example, you can use a size
constraint statement to look for query strings that are longer than 100
bytes.

If you configure AWS WAF to inspect the request body, AWS WAF inspects
only the first 8192 bytes (8 KB). If the request body for your web
requests never exceeds 8192 bytes, you can create a size constraint
condition and block requests that have a request body greater than 8192
bytes.

If you choose URI for the value of Part of the request to filter on,
the slash (/) in the URI counts as one character. For example, the URI
C</logo.jpg> is nine characters long.


=head2 SqliMatchStatement => L<Paws::WAFv2::SqliMatchStatement>

  Attackers sometimes insert malicious SQL code into web requests in an
effort to extract data from your database. To allow or block web
requests that appear to contain malicious SQL code, create one or more
SQL injection match conditions. An SQL injection match condition
identifies the part of web requests, such as the URI or the query
string, that you want AWS WAF to inspect. Later in the process, when
you create a web ACL, you specify whether to allow or block requests
that appear to contain malicious SQL code.


=head2 XssMatchStatement => L<Paws::WAFv2::XssMatchStatement>

  A rule statement that defines a cross-site scripting (XSS) match search
for AWS WAF to apply to web requests. XSS attacks are those where the
attacker uses vulnerabilities in a benign website as a vehicle to
inject malicious client-site scripts into other legitimate web
browsers. The XSS match statement provides the location in requests
that you want AWS WAF to search and text transformations to use on the
search area before AWS WAF searches for character sequences that are
likely to be malicious strings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

