
package Paws::Config::StartConfigRulesEvaluation;
  use Moose;
  has ConfigRuleNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartConfigRulesEvaluation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::StartConfigRulesEvaluationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::StartConfigRulesEvaluation - Arguments for method StartConfigRulesEvaluation on L<Paws::Config>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartConfigRulesEvaluation on the 
AWS Config service. Use the attributes of this class
as arguments to method StartConfigRulesEvaluation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartConfigRulesEvaluation.

As an example:

  $service_obj->StartConfigRulesEvaluation(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ConfigRuleNames => ArrayRef[Str|Undef]

The list of names of AWS Config rules that you want to run evaluations
for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartConfigRulesEvaluation in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

