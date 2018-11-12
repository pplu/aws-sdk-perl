
package Paws::MediaLive::DescribeOffering;
  use Moose;
  has OfferingId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'offeringId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeOffering');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/prod/offerings/{offeringId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaLive::DescribeOfferingResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::DescribeOffering - Arguments for method DescribeOffering on L<Paws::MediaLive>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeOffering on the
L<AWS Elemental MediaLive|Paws::MediaLive> service. Use the attributes of this class
as arguments to method DescribeOffering.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeOffering.

=head1 SYNOPSIS

    my $medialive = Paws->service('MediaLive');
    my $DescribeOfferingResponse = $medialive->DescribeOffering(
      OfferingId => 'My__string',

    );

    # Results:
    my $Arn                 = $DescribeOfferingResponse->Arn;
    my $CurrencyCode        = $DescribeOfferingResponse->CurrencyCode;
    my $Duration            = $DescribeOfferingResponse->Duration;
    my $DurationUnits       = $DescribeOfferingResponse->DurationUnits;
    my $FixedPrice          = $DescribeOfferingResponse->FixedPrice;
    my $OfferingDescription = $DescribeOfferingResponse->OfferingDescription;
    my $OfferingId          = $DescribeOfferingResponse->OfferingId;
    my $OfferingType        = $DescribeOfferingResponse->OfferingType;
    my $Region              = $DescribeOfferingResponse->Region;
    my $ResourceSpecification =
      $DescribeOfferingResponse->ResourceSpecification;
    my $UsagePrice = $DescribeOfferingResponse->UsagePrice;

    # Returns a L<Paws::MediaLive::DescribeOfferingResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/medialive/DescribeOffering>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OfferingId => Str

Unique offering ID, e.g. '87654321'




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeOffering in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

