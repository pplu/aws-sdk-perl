
package Paws::ELBv2::DescribeRules;
  use Moose;
  has ListenerArn => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');
  has RuleArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeRules');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::DescribeRulesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeRulesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeRules - Arguments for method DescribeRules on L<Paws::ELBv2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeRules on the
L<Elastic Load Balancing|Paws::ELBv2> service. Use the attributes of this class
as arguments to method DescribeRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeRules.

=head1 SYNOPSIS

    my $elasticloadbalancing = Paws->service('ELBv2');
    # To describe a rule
    # This example describes the specified rule.
    my $DescribeRulesOutput = $elasticloadbalancing->DescribeRules(
      {
        'RuleArns' => [
'arn:aws:elasticloadbalancing:us-west-2:123456789012:listener-rule/app/my-load-balancer/50dc6c495c0c9188/f2f7dc8efc522ab2/9683b2d02a6cabee'
        ]
      }
    );

    # Results:
    my $Rules = $DescribeRulesOutput->Rules;

    # Returns a L<Paws::ELBv2::DescribeRulesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/elasticloadbalancing/DescribeRules>

=head1 ATTRIBUTES


=head2 ListenerArn => Str

The Amazon Resource Name (ARN) of the listener.



=head2 Marker => Str

The marker for the next set of results. (You received this marker from
a previous call.)



=head2 PageSize => Int

The maximum number of results to return with this call.



=head2 RuleArns => ArrayRef[Str|Undef]

The Amazon Resource Names (ARN) of the rules.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeRules in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

