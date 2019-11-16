
package Paws::GuardDuty::ListPublishingDestinations;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPublishingDestinations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/publishingDestination');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::ListPublishingDestinationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListPublishingDestinations - Arguments for method ListPublishingDestinations on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPublishingDestinations on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method ListPublishingDestinations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPublishingDestinations.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $ListPublishingDestinationsResponse =
      $guardduty->ListPublishingDestinations(
      DetectorId => 'MyDetectorId',
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyString',       # OPTIONAL
      );

    # Results:
    my $Destinations = $ListPublishingDestinationsResponse->Destinations;
    my $NextToken    = $ListPublishingDestinationsResponse->NextToken;

    # Returns a L<Paws::GuardDuty::ListPublishingDestinationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/ListPublishingDestinations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The ID of the detector to retrieve publishing destinations for.



=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

A token to use for paginating results returned in the repsonse. Set the
value of this parameter to null for the first request to a list action.
For subsequent calls, use the C<NextToken> value returned from the
previous request to continue listing results after the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPublishingDestinations in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

