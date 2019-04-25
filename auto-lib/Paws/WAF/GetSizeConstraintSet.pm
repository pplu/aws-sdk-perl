
package Paws::WAF::GetSizeConstraintSet;
  use Moose;
  has SizeConstraintSetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSizeConstraintSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAF::GetSizeConstraintSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAF::GetSizeConstraintSet - Arguments for method GetSizeConstraintSet on L<Paws::WAF>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSizeConstraintSet on the
L<AWS WAF|Paws::WAF> service. Use the attributes of this class
as arguments to method GetSizeConstraintSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSizeConstraintSet.

=head1 SYNOPSIS

    my $waf = Paws->service('WAF');
    # To get a size constraint set
    # The following example returns the details of a size constraint match set
    # with the ID example1ds3t-46da-4fdb-b8d5-abc321j569j5.
    my $GetSizeConstraintSetResponse = $waf->GetSizeConstraintSet(
      {
        'SizeConstraintSetId' => 'example1ds3t-46da-4fdb-b8d5-abc321j569j5'
      }
    );

    # Results:
    my $SizeConstraintSet = $GetSizeConstraintSetResponse->SizeConstraintSet;

    # Returns a L<Paws::WAF::GetSizeConstraintSetResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/waf/GetSizeConstraintSet>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SizeConstraintSetId => Str

The C<SizeConstraintSetId> of the SizeConstraintSet that you want to
get. C<SizeConstraintSetId> is returned by CreateSizeConstraintSet and
by ListSizeConstraintSets.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSizeConstraintSet in L<Paws::WAF>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

