package Paws::WAFRegional::RuleSummary;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has RuleId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::RuleSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::RuleSummary object:

  $service_obj->Method(Att1 => { Name => $value, ..., RuleId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::RuleSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Contains the identifier and the friendly name or description of the
C<Rule>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  A friendly name or description of the Rule. You can't change the name
of a C<Rule> after you create it.


=head2 B<REQUIRED> RuleId => Str

  A unique identifier for a C<Rule>. You use C<RuleId> to get more
information about a C<Rule> (see GetRule), update a C<Rule> (see
UpdateRule), insert a C<Rule> into a C<WebACL> or delete one from a
C<WebACL> (see UpdateWebACL), or delete a C<Rule> from AWS WAF (see
DeleteRule).

C<RuleId> is returned by CreateRule and by ListRules.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

