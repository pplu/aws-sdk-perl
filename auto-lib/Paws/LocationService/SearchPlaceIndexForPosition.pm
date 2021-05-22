
package Paws::LocationService::SearchPlaceIndexForPosition;
  use Moose;
  has IndexName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'IndexName', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has Position => (is => 'ro', isa => 'ArrayRef[Num]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchPlaceIndexForPosition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/places/v0/indexes/{IndexName}/search/position');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::SearchPlaceIndexForPositionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::SearchPlaceIndexForPosition - Arguments for method SearchPlaceIndexForPosition on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchPlaceIndexForPosition on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method SearchPlaceIndexForPosition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchPlaceIndexForPosition.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $SearchPlaceIndexForPositionResponse = $geo->SearchPlaceIndexForPosition(
      IndexName  => 'MyResourceName',
      Position   => [ 1, ... ],
      MaxResults => 1,                  # OPTIONAL
    );

    # Results:
    my $Results = $SearchPlaceIndexForPositionResponse->Results;
    my $Summary = $SearchPlaceIndexForPositionResponse->Summary;

# Returns a L<Paws::LocationService::SearchPlaceIndexForPositionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/SearchPlaceIndexForPosition>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexName => Str

The name of the Place index resource you want to use for the search.



=head2 MaxResults => Int

An optional paramer. The maximum number of results returned per
request.

Default value: C<50>



=head2 B<REQUIRED> Position => ArrayRef[Num]

Specifies a coordinate for the query defined by a longitude, and
latitude.

=over

=item *

The first position is the X coordinate, or longitude.

=item *

The second position is the Y coordinate, or latitude.

=back

For example, C<position=xLongitude&position=yLatitude> .




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchPlaceIndexForPosition in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

