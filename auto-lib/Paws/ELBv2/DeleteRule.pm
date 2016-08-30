
package Paws::ELBv2::DeleteRule;
  use Moose;
  has RuleArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteRule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::DeleteRuleOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeleteRuleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DeleteRule - Arguments for method DeleteRule on Paws::ELBv2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteRule on the 
Elastic Load Balancing service. Use the attributes of this class
as arguments to method DeleteRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteRule.

As an example:

  $service_obj->DeleteRule(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> RuleArn => Str

The Amazon Resource Name (ARN) of the rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteRule in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

