
package Paws::LocationService::ListGeofences;
  use Moose;
  has CollectionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CollectionName', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGeofences');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/geofencing/v0/collections/{CollectionName}/list-geofences');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::ListGeofencesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::ListGeofences - Arguments for method ListGeofences on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGeofences on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method ListGeofences.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGeofences.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $ListGeofencesResponse = $geo->ListGeofences(
      CollectionName => 'MyResourceName',
      NextToken      => 'MyToken',          # OPTIONAL
    );

    # Results:
    my $Entries   = $ListGeofencesResponse->Entries;
    my $NextToken = $ListGeofencesResponse->NextToken;

    # Returns a L<Paws::LocationService::ListGeofencesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/ListGeofences>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionName => Str

The name of the geofence collection storing the list of geofences.



=head2 NextToken => Str

The pagination token specifying which page of results to return in the
response. If no token is provided, the default page is the first page.

Default value: C<null>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGeofences in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

