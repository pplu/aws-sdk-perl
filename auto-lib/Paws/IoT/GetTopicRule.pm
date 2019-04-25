
package Paws::IoT::GetTopicRule;
  use Moose;
  has RuleName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ruleName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTopicRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rules/{ruleName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::GetTopicRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::GetTopicRule - Arguments for method GetTopicRule on L<Paws::IoT>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTopicRule on the
L<AWS IoT|Paws::IoT> service. Use the attributes of this class
as arguments to method GetTopicRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTopicRule.

=head1 SYNOPSIS

    my $iot = Paws->service('IoT');
    my $GetTopicRuleResponse = $iot->GetTopicRule(
      RuleName => 'MyRuleName',

    );

    # Results:
    my $Rule    = $GetTopicRuleResponse->Rule;
    my $RuleArn = $GetTopicRuleResponse->RuleArn;

    # Returns a L<Paws::IoT::GetTopicRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iot/GetTopicRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleName => Str

The name of the rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTopicRule in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

