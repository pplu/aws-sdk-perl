package Paws::WAF::SqlInjectionMatchSetSummary;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SqlInjectionMatchSetId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::SqlInjectionMatchSetSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAF::SqlInjectionMatchSetSummary object:

  $service_obj->Method(Att1 => { Name => $value, ..., SqlInjectionMatchSetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAF::SqlInjectionMatchSetSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

The C<Id> and C<Name> of a C<SqlInjectionMatchSet>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the C<SqlInjectionMatchSet>, if any, specified by C<Id>.


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



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

