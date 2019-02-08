
package Paws::ELBv2::ModifyRule;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Action]');
  has Conditions => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::RuleCondition]');
  has RuleArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::ModifyRuleOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyRuleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::ModifyRule - Arguments for method ModifyRule on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyRule on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method ModifyRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyRule.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    # To modify a rule
    # This example modifies the condition for the specified rule.
    my $ModifyRuleOutput = $elasticloadbalancing->ModifyRule(
      {
        'Conditions' => [

          {
            'Field'  => 'path-pattern',
            'Values' => ['/images/*']
          }
        ],
        'RuleArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee'
      }
    );

    # Results:
    my $Rules = $ModifyRuleOutput->Rules;

    # Returns a L<Paws::ELBv2::ModifyRuleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/ModifyRule>

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[L<Paws::ELBv2::Action>]

The actions.

If the action type is C<forward>, you specify a target group. The
protocol of the target group must be HTTP or HTTPS for an Application
Load Balancer. The protocol of the target group must be TCP or TLS for
a Network Load Balancer.

[HTTPS listeners] If the action type is C<authenticate-oidc>, you
authenticate users through an identity provider that is OpenID Connect
(OIDC) compliant.

[HTTPS listeners] If the action type is C<authenticate-cognito>, you
authenticate users through the user pools supported by Amazon Cognito.

[Application Load Balancer] If the action type is C<redirect>, you
redirect specified client requests from one URL to another.

[Application Load Balancer] If the action type is C<fixed-response>,
you drop specified client requests and return a custom HTTP response.



=head2 Conditions => ArrayRef[L<Paws::ELBv2::RuleCondition>]

The conditions. Each condition specifies a field name and a single
value.

If the field name is C<host-header>, you can specify a single host name
(for example, my.example.com). A host name is case insensitive, can be
up to 128 characters in length, and can contain any of the following
characters. You can include up to three wildcard characters.

=over

=item *

A-Z, a-z, 0-9

=item *

- .

=item *

* (matches 0 or more characters)

=item *

? (matches exactly 1 character)

=back

If the field name is C<path-pattern>, you can specify a single path
pattern. A path pattern is case-sensitive, can be up to 128 characters
in length, and can contain any of the following characters. You can
include up to three wildcard characters.

=over

=item *

A-Z, a-z, 0-9

=item *

_ - . $ / ~ " ' @ : +

=item *

& (using &)

=item *

* (matches 0 or more characters)

=item *

? (matches exactly 1 character)

=back




=head2 B<REQUIRED> RuleArn => Str

The Amazon Resource Name (ARN) of the rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyRule in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

