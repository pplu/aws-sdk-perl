package Paws::WAFRegional::Predicate;
  use Moose;
  has DataId => (is => 'ro', isa => 'Str', required => 1);
  has Negated => (is => 'ro', isa => 'Bool', required => 1);
  has Type => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::Predicate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::Predicate object:

  $service_obj->Method(Att1 => { DataId => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::Predicate object:

  $result = $service_obj->Method(...);
  $result->Att1->DataId

=head1 DESCRIPTION

Specifies the ByteMatchSet, IPSet, SqlInjectionMatchSet, XssMatchSet,
RegexMatchSet, GeoMatchSet, and SizeConstraintSet objects that you want
to add to a C<Rule> and, for each object, indicates whether you want to
negate the settings, for example, requests that do NOT originate from
the IP address 192.0.2.44.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataId => Str

  A unique identifier for a predicate in a C<Rule>, such as
C<ByteMatchSetId> or C<IPSetId>. The ID is returned by the
corresponding C<Create> or C<List> command.


=head2 B<REQUIRED> Negated => Bool

  Set C<Negated> to C<False> if you want AWS WAF to allow, block, or
count requests based on the settings in the specified ByteMatchSet,
IPSet, SqlInjectionMatchSet, XssMatchSet, RegexMatchSet, GeoMatchSet,
or SizeConstraintSet. For example, if an C<IPSet> includes the IP
address C<192.0.2.44>, AWS WAF will allow or block requests based on
that IP address.

Set C<Negated> to C<True> if you want AWS WAF to allow or block a
request based on the negation of the settings in the ByteMatchSet,
IPSet, SqlInjectionMatchSet, XssMatchSet, RegexMatchSet, GeoMatchSet,
or SizeConstraintSet. For example, if an C<IPSet> includes the IP
address C<192.0.2.44>, AWS WAF will allow, block, or count requests
based on all IP addresses I<except> C<192.0.2.44>.


=head2 B<REQUIRED> Type => Str

  The type of predicate in a C<Rule>, such as C<ByteMatch> or C<IPSet>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

