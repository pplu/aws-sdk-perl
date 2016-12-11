
package Paws::WAFRegional::UpdateSizeConstraintSet;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has SizeConstraintSetId => (is => 'ro', isa => 'Str', required => 1);
  has Updates => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::SizeConstraintSetUpdate]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSizeConstraintSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::UpdateSizeConstraintSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::UpdateSizeConstraintSet - Arguments for method UpdateSizeConstraintSet on Paws::WAFRegional

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSizeConstraintSet on the 
AWS WAF Regional service. Use the attributes of this class
as arguments to method UpdateSizeConstraintSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSizeConstraintSet.

As an example:

  $service_obj->UpdateSizeConstraintSet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> SizeConstraintSetId => Str

The C<SizeConstraintSetId> of the SizeConstraintSet that you want to
update. C<SizeConstraintSetId> is returned by CreateSizeConstraintSet
and by ListSizeConstraintSets.



=head2 B<REQUIRED> Updates => ArrayRef[L<Paws::WAFRegional::SizeConstraintSetUpdate>]

An array of C<SizeConstraintSetUpdate> objects that you want to insert
into or delete from a SizeConstraintSet. For more information, see the
applicable data types:

=over

=item *

SizeConstraintSetUpdate: Contains C<Action> and C<SizeConstraint>

=item *

SizeConstraint: Contains C<FieldToMatch>, C<TextTransformation>,
C<ComparisonOperator>, and C<Size>

=item *

FieldToMatch: Contains C<Data> and C<Type>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSizeConstraintSet in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

