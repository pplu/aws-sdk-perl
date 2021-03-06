
package Paws::ELBv2::CreateRule;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Action]', required => 1);
  has Conditions => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::RuleCondition]', required => 1);
  has ListenerArn => (is => 'ro', isa => 'Str', required => 1);
  has Priority => (is => 'ro', isa => 'Int', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::CreateRuleOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateRuleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::CreateRule - Arguments for method CreateRule on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRule on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method CreateRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRule.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    # To create a rule
    # This example creates a rule that forwards requests to the specified target
    # group if the URL contains the specified pattern (for example, /img/*).
    my $CreateRuleOutput = $elasticloadbalancing->CreateRule(
      'Actions' => [

        {
          'TargetGroupArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:targetgroup/my-targets/73e2d6bc24d8a067',
          'Type' => 'forward'
        }
      ],
      'Conditions' => [

        {
          'Field'  => 'path-pattern',
          'Values' => ['/img/*']
        }
      ],
      'ListenerArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:listener/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2',
      'Priority' => 10
    );

    # Results:
    my $Rules = $CreateRuleOutput->Rules;

    # Returns a L<Paws::ELBv2::CreateRuleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/CreateRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[L<Paws::ELBv2::Action>]

The actions.



=head2 B<REQUIRED> Conditions => ArrayRef[L<Paws::ELBv2::RuleCondition>]

The conditions.



=head2 B<REQUIRED> ListenerArn => Str

The Amazon Resource Name (ARN) of the listener.



=head2 B<REQUIRED> Priority => Int

The rule priority. A listener can't have multiple rules with the same
priority.



=head2 Tags => ArrayRef[L<Paws::ELBv2::Tag>]

The tags to assign to the rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRule in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

