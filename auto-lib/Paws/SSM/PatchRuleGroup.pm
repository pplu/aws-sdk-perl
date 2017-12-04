package Paws::SSM::PatchRuleGroup;
  use Moose;
  has PatchRules => (is => 'ro', isa => 'ArrayRef[Paws::SSM::PatchRule]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PatchRuleGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::PatchRuleGroup object:

  $service_obj->Method(Att1 => { PatchRules => $value, ..., PatchRules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::PatchRuleGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->PatchRules

=head1 DESCRIPTION

A set of rules defining the approval rules for a patch baseline.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PatchRules => ArrayRef[L<Paws::SSM::PatchRule>]

  The rules that make up the rule group.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

