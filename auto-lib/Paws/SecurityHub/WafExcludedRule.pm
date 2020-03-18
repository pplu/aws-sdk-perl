package Paws::SecurityHub::WafExcludedRule;
  use Moose;
  has RuleId => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::WafExcludedRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::WafExcludedRule object:

  $service_obj->Method(Att1 => { RuleId => $value, ..., RuleId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::WafExcludedRule object:

  $result = $service_obj->Method(...);
  $result->Att1->RuleId

=head1 DESCRIPTION

Details about a rule to exclude from a rule group.

=head1 ATTRIBUTES


=head2 RuleId => Str

  The unique identifier for the rule to exclude from the rule group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

