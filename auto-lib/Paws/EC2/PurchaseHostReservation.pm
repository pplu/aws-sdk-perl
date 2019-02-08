
package Paws::EC2::PurchaseHostReservation;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has CurrencyCode => (is => 'ro', isa => 'Str');
  has HostIdSet => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has LimitPrice => (is => 'ro', isa => 'Str');
  has OfferingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PurchaseHostReservation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::PurchaseHostReservationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::PurchaseHostReservation - Arguments for method PurchaseHostReservation on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PurchaseHostReservation on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method PurchaseHostReservation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PurchaseHostReservation.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $PurchaseHostReservationResult = $ec2->PurchaseHostReservation(
      HostIdSet    => [ 'MyString', ... ],
      OfferingId   => 'MyString',
      ClientToken  => 'MyString',            # OPTIONAL
      CurrencyCode => 'USD',                 # OPTIONAL
      LimitPrice   => 'MyString',            # OPTIONAL
    );

    # Results:
    my $ClientToken       = $PurchaseHostReservationResult->ClientToken;
    my $CurrencyCode      = $PurchaseHostReservationResult->CurrencyCode;
    my $Purchase          = $PurchaseHostReservationResult->Purchase;
    my $TotalHourlyPrice  = $PurchaseHostReservationResult->TotalHourlyPrice;
    my $TotalUpfrontPrice = $PurchaseHostReservationResult->TotalUpfrontPrice;

    # Returns a L<Paws::EC2::PurchaseHostReservationResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/PurchaseHostReservation>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure idempotency of
the request. For more information, see How to Ensure Idempotency
(https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html)
in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 CurrencyCode => Str

The currency in which the C<totalUpfrontPrice>, C<LimitPrice>, and
C<totalHourlyPrice> amounts are specified. At this time, the only
supported currency is C<USD>.

Valid values are: C<"USD">

=head2 B<REQUIRED> HostIdSet => ArrayRef[Str|Undef]

The IDs of the Dedicated Hosts with which the reservation will be
associated.



=head2 LimitPrice => Str

The specified limit is checked against the total upfront cost of the
reservation (calculated as the offering's upfront cost multiplied by
the host count). If the total upfront cost is greater than the
specified price limit, the request fails. This is used to ensure that
the purchase does not exceed the expected upfront cost of the purchase.
At this time, the only supported currency is C<USD>. For example, to
indicate a limit price of USD 100, specify 100.00.



=head2 B<REQUIRED> OfferingId => Str

The ID of the offering.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PurchaseHostReservation in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

