
package Paws::ELBv2::SetRulePriorities;
  use Moose;
  has RulePriorities => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::RulePriorityPair]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetRulePriorities');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::SetRulePrioritiesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'SetRulePrioritiesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::SetRulePriorities - Arguments for method SetRulePriorities on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetRulePriorities on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method SetRulePriorities.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetRulePriorities.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    # To set the rule priority
    # This example sets the priority of the specified rule.
    my $SetRulePrioritiesOutput = $elasticloadbalancing->SetRulePriorities(
      {
        'RulePriorities' => [

          {
            'Priority' => 5,
            'RuleArn' =>
'arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/1291d13826f405c3'
          }
        ]
      }
    );

    # Results:
    my $Rules = $SetRulePrioritiesOutput->Rules;

    # Returns a L<Paws::ELBv2::SetRulePrioritiesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/SetRulePriorities>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RulePriorities => ArrayRef[L<Paws::ELBv2::RulePriorityPair>]

The rule priorities.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetRulePriorities in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

