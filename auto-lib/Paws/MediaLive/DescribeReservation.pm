
package Paws::MediaLive::DescribeReservation;
  use Moose;
  has ReservationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'reservationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReservation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/reservations/{reservationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::DescribeReservationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DescribeReservation - Arguments for method DescribeReservation on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReservation on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method DescribeReservation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReservation.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $DescribeReservationResponse = $medialive->DescribeReservation(
      ReservationId => 'My__string',

    );

    # Results:
    my $Arn                 = $DescribeReservationResponse->Arn;
    my $Count               = $DescribeReservationResponse->Count;
    my $CurrencyCode        = $DescribeReservationResponse->CurrencyCode;
    my $Duration            = $DescribeReservationResponse->Duration;
    my $DurationUnits       = $DescribeReservationResponse->DurationUnits;
    my $End                 = $DescribeReservationResponse->End;
    my $FixedPrice          = $DescribeReservationResponse->FixedPrice;
    my $Name                = $DescribeReservationResponse->Name;
    my $OfferingDescription = $DescribeReservationResponse->OfferingDescription;
    my $OfferingId          = $DescribeReservationResponse->OfferingId;
    my $OfferingType        = $DescribeReservationResponse->OfferingType;
    my $Region              = $DescribeReservationResponse->Region;
    my $ReservationId       = $DescribeReservationResponse->ReservationId;
    my $ResourceSpecification =
      $DescribeReservationResponse->ResourceSpecification;
    my $Start      = $DescribeReservationResponse->Start;
    my $State      = $DescribeReservationResponse->State;
    my $UsagePrice = $DescribeReservationResponse->UsagePrice;

    # Returns a L<Paws::MediaLive::DescribeReservationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/DescribeReservation>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReservationId => Str

Unique reservation ID, e.g. '1234567'




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReservation in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

