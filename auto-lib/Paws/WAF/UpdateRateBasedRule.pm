
package Paws::WAF::UpdateRateBasedRule;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has RateLimit => (is => 'ro', isa => 'Int', required => 1);
  has RuleId => (is => 'ro', isa => 'Str', required => 1);
  has Updates => (is => 'ro', isa => 'ArrayRef[Paws::WAF::RuleUpdate]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRateBasedRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::UpdateRateBasedRuleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::UpdateRateBasedRule - Arguments for method UpdateRateBasedRule on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRateBasedRule on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method UpdateRateBasedRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRateBasedRule.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    my $UpdateRateBasedRuleResponse = $waf->UpdateRateBasedRule(
      ChangeToken => 'MyChangeToken',
      RateLimit   => 1,
      RuleId      => 'MyResourceId',
      Updates     => [
        {
          Action    => 'INSERT',    # values: INSERT, DELETE
          Predicate => {
            DataId  => 'MyResourceId',    # min: 1, max: 128
            Negated => 1,
            Type    => 'IPMatch'
            , # values: IPMatch, ByteMatch, SqlInjectionMatch, GeoMatch, SizeConstraint, XssMatch, RegexMatch

          },

        },
        ...
      ],

    );

    # Results:
    my $ChangeToken = $UpdateRateBasedRuleResponse->ChangeToken;

    # Returns a L<Paws::WAF::UpdateRateBasedRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/UpdateRateBasedRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> RateLimit => Int

The maximum number of requests, which have an identical value in the
field specified by the C<RateKey>, allowed in a five-minute period. If
the number of requests exceeds the C<RateLimit> and the other
predicates specified in the rule are also met, AWS WAF triggers the
action that is specified for this rule.



=head2 B<REQUIRED> RuleId => Str

The C<RuleId> of the C<RateBasedRule> that you want to update.
C<RuleId> is returned by C<CreateRateBasedRule> and by
ListRateBasedRules.



=head2 B<REQUIRED> Updates => ArrayRef[L<Paws::WAF::RuleUpdate>]

An array of C<RuleUpdate> objects that you want to insert into or
delete from a RateBasedRule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRateBasedRule in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

