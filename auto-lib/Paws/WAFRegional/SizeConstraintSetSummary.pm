package Paws::WAFRegional::SizeConstraintSetSummary;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has SizeConstraintSetId => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::SizeConstraintSetSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WAFRegional::SizeConstraintSetSummary object:

  $service_obj->Method(Att1 => { Name => $value, ..., SizeConstraintSetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WAFRegional::SizeConstraintSetSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

The C<Id> and C<Name> of a C<SizeConstraintSet>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of the C<SizeConstraintSet>, if any.


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

