
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

Paws::WAFRegional::UpdateSizeConstraintSet - Arguments for method UpdateSizeConstraintSet on L<Paws::WAFRegional>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSizeConstraintSet on the
L<AWS WAF Regional|Paws::WAFRegional> service. Use the attributes of this class
as arguments to method UpdateSizeConstraintSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSizeConstraintSet.

=head1 SYNOPSIS

    my $waf-regional = Paws->service('WAFRegional');
    # To update a size constraint set
    # The following example deletes a SizeConstraint object (filters) in a size
    # constraint set with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    my $UpdateSizeConstraintSetResponse =
      $waf -regional->UpdateSizeConstraintSet(
      {
        'ChangeToken'         => 'abcd12f2-46da-4fdb-b8d5-fbd4c466928f',
        'SizeConstraintSetId' => 'example1ds3t-46da-4fdb-b8d5-abc321j569j5',
        'Updates'             => [

          {
            'Action'         => 'DELETE',
            'SizeConstraint' => {
              'ComparisonOperator' => 'GT',
              'FieldToMatch'       => {
                'Type' => 'QUERY_STRING'
              },
              'Size'               => 0,
              'TextTransformation' => 'NONE'
            }
          }
        ]
      }
      );

    # Results:
    my $ChangeToken = $UpdateSizeConstraintSetResponse->ChangeToken;

    # Returns a L<Paws::WAFRegional::UpdateSizeConstraintSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf-regional/UpdateSizeConstraintSet>

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

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

