package Paws::WAFRegional::SizeConstraintSet;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has SizeConstraints => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::SizeConstraint]', required => 1);
  has SizeConstraintSetId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::SizeConstraintSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::SizeConstraintSet object:

  $service_obj->Method(Att1 => { Name => $value, ..., SizeConstraintSetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::SizeConstraintSet object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

A complex type that contains C<SizeConstraint> objects, which specify
the parts of web requests that you want AWS WAF to inspect the size of.
If a C<SizeConstraintSet> contains more than one C<SizeConstraint>
object, a request only needs to match one constraint to be considered a
match.

=head1 ATTRIBUTES


=head2 Name => Str

  The name, if any, of the C<SizeConstraintSet>.


=head2 B<REQUIRED> SizeConstraints => ArrayRef[L<Paws::WAFRegional::SizeConstraint>]

  Specifies the parts of web requests that you want to inspect the size
of.


=head2 B<REQUIRED> SizeConstraintSetId => Str

  A unique identifier for a C<SizeConstraintSet>. You use
C<SizeConstraintSetId> to get information about a C<SizeConstraintSet>
(see GetSizeConstraintSet), update a C<SizeConstraintSet> (see
UpdateSizeConstraintSet), insert a C<SizeConstraintSet> into a C<Rule>
or delete one from a C<Rule> (see UpdateRule), and delete a
C<SizeConstraintSet> from AWS WAF (see DeleteSizeConstraintSet).

C<SizeConstraintSetId> is returned by CreateSizeConstraintSet and by
ListSizeConstraintSets.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

