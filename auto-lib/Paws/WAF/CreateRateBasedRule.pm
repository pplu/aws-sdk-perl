
package Paws::WAF::CreateRateBasedRule;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RateKey => (is => 'ro', isa => 'Str', required => 1);
  has RateLimit => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRateBasedRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::CreateRateBasedRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::CreateRateBasedRule - Arguments for method CreateRateBasedRule on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRateBasedRule on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method CreateRateBasedRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRateBasedRule.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    my $CreateRateBasedRuleResponse = $waf->CreateRateBasedRule(
      ChangeToken => 'MyChangeToken',
      MetricName  => 'MyMetricName',
      Name        => 'MyResourceName',
      RateKey     => 'IP',
      RateLimit   => 1,

    );

    # Results:
    my $ChangeToken = $CreateRateBasedRuleResponse->ChangeToken;
    my $Rule        = $CreateRateBasedRuleResponse->Rule;

    # Returns a L<Paws::WAF::CreateRateBasedRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/CreateRateBasedRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The C<ChangeToken> that you used to submit the C<CreateRateBasedRule>
request. You can also use this value to query the status of the
request. For more information, see GetChangeTokenStatus.



=head2 B<REQUIRED> MetricName => Str

A friendly name or description for the metrics for this
C<RateBasedRule>. The name can contain only alphanumeric characters
(A-Z, a-z, 0-9); the name can't contain whitespace. You can't change
the name of the metric after you create the C<RateBasedRule>.



=head2 B<REQUIRED> Name => Str

A friendly name or description of the RateBasedRule. You can't change
the name of a C<RateBasedRule> after you create it.



=head2 B<REQUIRED> RateKey => Str

The field that AWS WAF uses to determine if requests are likely
arriving from a single source and thus subject to rate monitoring. The
only valid value for C<RateKey> is C<IP>. C<IP> indicates that requests
that arrive from the same IP address are subject to the C<RateLimit>
that is specified in the C<RateBasedRule>.

Valid values are: C<"IP">

=head2 B<REQUIRED> RateLimit => Int

The maximum number of requests, which have an identical value in the
field that is specified by C<RateKey>, allowed in a five-minute period.
If the number of requests exceeds the C<RateLimit> and the other
predicates specified in the rule are also met, AWS WAF triggers the
action that is specified for this rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRateBasedRule in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

