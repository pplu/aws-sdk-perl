
package Paws::RedShift::PurchaseReservedNodeOffering;
  use Moose;
  has NodeCount => (is => 'ro', isa => 'Int');
  has ReservedNodeOfferingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseReservedNodeOffering');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::PurchaseReservedNodeOfferingResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'PurchaseReservedNodeOfferingResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::PurchaseReservedNodeOffering - Arguments for method PurchaseReservedNodeOffering on L<Paws::RedShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PurchaseReservedNodeOffering on the
L<Amazon Redshift|Paws::RedShift> service. Use the attributes of this class
as arguments to method PurchaseReservedNodeOffering.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PurchaseReservedNodeOffering.

=head1 SYNOPSIS

    my $redshift = Paws->service('RedShift');
    my $PurchaseReservedNodeOfferingResult =
      $redshift->PurchaseReservedNodeOffering(
      ReservedNodeOfferingId => 'MyString',
      NodeCount              => 1,            # OPTIONAL
      );

    # Results:
    my $ReservedNode = $PurchaseReservedNodeOfferingResult->ReservedNode;

    # Returns a L<Paws::RedShift::PurchaseReservedNodeOfferingResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift/PurchaseReservedNodeOffering>

=head1 ATTRIBUTES


=head2 NodeCount => Int

The number of reserved nodes that you want to purchase.

Default: C<1>



=head2 B<REQUIRED> ReservedNodeOfferingId => Str

The unique identifier of the reserved node offering you want to
purchase.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PurchaseReservedNodeOffering in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

