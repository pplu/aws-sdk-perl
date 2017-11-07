package Paws::WAFRegional::Rule;
  use Moose;
  has MetricName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Predicates => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::Predicate]', required => 1);
  has RuleId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::Rule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::Rule object:

  $service_obj->Method(Att1 => { MetricName => $value, ..., RuleId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::Rule object:

  $result = $service_obj->Method(...);
  $result->Att1->MetricName

=head1 DESCRIPTION

A combination of ByteMatchSet, IPSet, and/or SqlInjectionMatchSet
objects that identify the web requests that you want to allow, block,
or count. For example, you might create a C<Rule> that includes the
following predicates:

=over

=item *

An C<IPSet> that causes AWS WAF to search for web requests that
originate from the IP address C<192.0.2.44>

=item *

A C<ByteMatchSet> that causes AWS WAF to search for web requests for
which the value of the C<User-Agent> header is C<BadBot>.

=back

To match the settings in this C<Rule>, a request must originate from
C<192.0.2.44> AND include a C<User-Agent> header for which the value is
C<BadBot>.

=head1 ATTRIBUTES


=head2 MetricName => Str

  A friendly name or description for the metrics for this C<Rule>. The
name can contain only alphanumeric characters (A-Z, a-z, 0-9); the name
can't contain whitespace. You can't change C<MetricName> after you
create the C<Rule>.


=head2 Name => Str

  The friendly name or description for the C<Rule>. You can't change the
name of a C<Rule> after you create it.


=head2 B<REQUIRED> Predicates => ArrayRef[L<Paws::WAFRegional::Predicate>]

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

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

