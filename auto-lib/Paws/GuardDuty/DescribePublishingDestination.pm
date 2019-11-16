
package Paws::GuardDuty::DescribePublishingDestination;
  use Moose;
  has DestinationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'destinationId', required => 1);
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePublishingDestination');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/publishingDestination/{destinationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::DescribePublishingDestinationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::DescribePublishingDestination - Arguments for method DescribePublishingDestination on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePublishingDestination on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method DescribePublishingDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePublishingDestination.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $DescribePublishingDestinationResponse =
      $guardduty->DescribePublishingDestination(
      DestinationId => 'MyString',
      DetectorId    => 'MyDetectorId',

      );

    # Results:
    my $DestinationId = $DescribePublishingDestinationResponse->DestinationId;
    my $DestinationProperties =
      $DescribePublishingDestinationResponse->DestinationProperties;
    my $DestinationType =
      $DescribePublishingDestinationResponse->DestinationType;
    my $PublishingFailureStartTimestamp =
      $DescribePublishingDestinationResponse->PublishingFailureStartTimestamp;
    my $Status = $DescribePublishingDestinationResponse->Status;

   # Returns a L<Paws::GuardDuty::DescribePublishingDestinationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/DescribePublishingDestination>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationId => Str

The ID of the publishing destination to retrieve.



=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector associated with the publishing
destination to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePublishingDestination in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

