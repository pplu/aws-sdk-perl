package Paws::WAF::RuleGroupUpdate;
  use Moose;
  has Action => (is => 'ro', isa => 'Str', required => 1);
  has ActivatedRule => (is => 'ro', isa => 'Paws::WAF::ActivatedRule', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::RuleGroupUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::RuleGroupUpdate object:

  $service_obj->Method(Att1 => { Action => $value, ..., ActivatedRule => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::RuleGroupUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

Specifies an C<ActivatedRule> and indicates whether you want to add it
to a C<RuleGroup> or delete it from a C<RuleGroup>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Action => Str

  Specify C<INSERT> to add an C<ActivatedRule> to a C<RuleGroup>. Use
C<DELETE> to remove an C<ActivatedRule> from a C<RuleGroup>.


=head2 B<REQUIRED> ActivatedRule => L<Paws::WAF::ActivatedRule>

  The C<ActivatedRule> object specifies a C<Rule> that you want to insert
or delete, the priority of the C<Rule> in the C<WebACL>, and the action
that you want AWS WAF to take when a web request matches the C<Rule>
(C<ALLOW>, C<BLOCK>, or C<COUNT>).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

