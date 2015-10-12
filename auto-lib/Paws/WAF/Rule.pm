package Paws::WAF::Rule;
  use Moose;
  has MetricName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Predicates => (is => 'ro', isa => 'ArrayRef[Paws::WAF::Predicate]', required => 1);
  has RuleId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::Rule

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::Rule object:

  $service_obj->Method(Att1 => { MetricName => $value, ..., RuleId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::Rule object:

  $result = $service_obj->Method(...);
  $result->Att1->MetricName

=head1 ATTRIBUTES

=head2 MetricName => Str

  

=head2 Name => Str

  The friendly name or description for the C<Rule>. You can't change the
name of a C<Rule> after you create it.

=head2 B<REQUIRED> Predicates => ArrayRef[Paws::WAF::Predicate]

  The C<Predicates> object contains one C<Predicate> element for each
ByteMatchSet, IPSet, or SqlInjectionMatchSet object that you want to
include in a C<Rule>.

=head2 B<REQUIRED> RuleId => Str

  A unique identifier for a C<Rule>. You use C<RuleId> to get more
information about a C<Rule> (see GetRule), update a C<Rule> (see
UpdateRule), insert a C<Rule> into a C<WebACL> or delete a one from a
C<WebACL> (see UpdateWebACL), or delete a C<Rule> from AWS WAF (see
DeleteRule).

C<RuleId> is returned by CreateRule and by ListRules.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

