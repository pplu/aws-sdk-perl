package Paws::WAF::SqlInjectionMatchSet;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has SqlInjectionMatchSetId => (is => 'ro', isa => 'Str', required => 1);
  has SqlInjectionMatchTuples => (is => 'ro', isa => 'ArrayRef[Paws::WAF::SqlInjectionMatchTuple]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::SqlInjectionMatchSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::SqlInjectionMatchSet object:

  $service_obj->Method(Att1 => { Name => $value, ..., SqlInjectionMatchTuples => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::SqlInjectionMatchSet object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A complex type that contains C<SqlInjectionMatchTuple> objects, which
specify the parts of web requests that you want AWS WAF to inspect for
snippets of malicious SQL code and, if you want AWS WAF to inspect a
header, the name of the header. If a C<SqlInjectionMatchSet> contains
more than one C<SqlInjectionMatchTuple> object, a request needs to
include snippets of SQL code in only one of the specified parts of the
request to be considered a match.

=head1 ATTRIBUTES


=head2 Name => Str

  The name, if any, of the C<SqlInjectionMatchSet>.


=head2 B<REQUIRED> SqlInjectionMatchSetId => Str

  A unique identifier for a C<SqlInjectionMatchSet>. You use
C<SqlInjectionMatchSetId> to get information about a
C<SqlInjectionMatchSet> (see GetSqlInjectionMatchSet), update a
C<SqlInjectionMatchSet> (see UpdateSqlInjectionMatchSet), insert a
C<SqlInjectionMatchSet> into a C<Rule> or delete one from a C<Rule>
(see UpdateRule), and delete a C<SqlInjectionMatchSet> from AWS WAF
(see DeleteSqlInjectionMatchSet).

C<SqlInjectionMatchSetId> is returned by CreateSqlInjectionMatchSet and
by ListSqlInjectionMatchSets.


=head2 B<REQUIRED> SqlInjectionMatchTuples => ArrayRef[L<Paws::WAF::SqlInjectionMatchTuple>]

  Specifies the parts of web requests that you want to inspect for
snippets of malicious SQL code.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

