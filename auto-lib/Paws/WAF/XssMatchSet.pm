package Paws::WAF::XssMatchSet;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has XssMatchSetId => (is => 'ro', isa => 'Str', required => 1);
  has XssMatchTuples => (is => 'ro', isa => 'ArrayRef[Paws::WAF::XssMatchTuple]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::XssMatchSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::XssMatchSet object:

  $service_obj->Method(Att1 => { Name => $value, ..., XssMatchTuples => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::XssMatchSet object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A complex type that contains C<XssMatchTuple> objects, which specify
the parts of web requests that you want AWS WAF to inspect for
cross-site scripting attacks and, if you want AWS WAF to inspect a
header, the name of the header. If a C<XssMatchSet> contains more than
one C<XssMatchTuple> object, a request needs to include cross-site
scripting attacks in only one of the specified parts of the request to
be considered a match.

=head1 ATTRIBUTES


=head2 Name => Str

  The name, if any, of the C<XssMatchSet>.


=head2 B<REQUIRED> XssMatchSetId => Str

  A unique identifier for an C<XssMatchSet>. You use C<XssMatchSetId> to
get information about an C<XssMatchSet> (see GetXssMatchSet), update an
C<XssMatchSet> (see UpdateXssMatchSet), insert an C<XssMatchSet> into a
C<Rule> or delete one from a C<Rule> (see UpdateRule), and delete an
C<XssMatchSet> from AWS WAF (see DeleteXssMatchSet).

C<XssMatchSetId> is returned by CreateXssMatchSet and by
ListXssMatchSets.


=head2 B<REQUIRED> XssMatchTuples => ArrayRef[L<Paws::WAF::XssMatchTuple>]

  Specifies the parts of web requests that you want to inspect for
cross-site scripting attacks.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

