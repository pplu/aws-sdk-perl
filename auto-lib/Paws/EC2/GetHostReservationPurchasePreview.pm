
package Paws::EC2::GetHostReservationPurchasePreview;
  use Moose;
  has HostIdSet => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has OfferingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHostReservationPurchasePreview');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetHostReservationPurchasePreviewResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetHostReservationPurchasePreview - Arguments for method GetHostReservationPurchasePreview on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetHostReservationPurchasePreview on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method GetHostReservationPurchasePreview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetHostReservationPurchasePreview.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $GetHostReservationPurchasePreviewResult =
      $ec2->GetHostReservationPurchasePreview(
      HostIdSet  => [ 'MyString', ... ],
      OfferingId => 'MyString',

      );

    # Results:
    my $CurrencyCode = $GetHostReservationPurchasePreviewResult->CurrencyCode;
    my $Purchase     = $GetHostReservationPurchasePreviewResult->Purchase;
    my $TotalHourlyPrice =
      $GetHostReservationPurchasePreviewResult->TotalHourlyPrice;
    my $TotalUpfrontPrice =
      $GetHostReservationPurchasePreviewResult->TotalUpfrontPrice;

    # Returns a L<Paws::EC2::GetHostReservationPurchasePreviewResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/GetHostReservationPurchasePreview>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostIdSet => ArrayRef[Str|Undef]

The IDs of the Dedicated Hosts with which the reservation is
associated.



=head2 B<REQUIRED> OfferingId => Str

The offering ID of the reservation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetHostReservationPurchasePreview in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

