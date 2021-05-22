
package Paws::LocationService::DescribeGeofenceCollection;
  use Moose;
  has CollectionName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CollectionName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGeofenceCollection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/geofencing/v0/collections/{CollectionName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::DescribeGeofenceCollectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::DescribeGeofenceCollection - Arguments for method DescribeGeofenceCollection on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGeofenceCollection on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method DescribeGeofenceCollection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGeofenceCollection.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $DescribeGeofenceCollectionResponse = $geo->DescribeGeofenceCollection(
      CollectionName => 'MyResourceName',

    );

    # Results:
    my $CollectionArn  = $DescribeGeofenceCollectionResponse->CollectionArn;
    my $CollectionName = $DescribeGeofenceCollectionResponse->CollectionName;
    my $CreateTime     = $DescribeGeofenceCollectionResponse->CreateTime;
    my $Description    = $DescribeGeofenceCollectionResponse->Description;
    my $PricingPlan    = $DescribeGeofenceCollectionResponse->PricingPlan;
    my $PricingPlanDataSource =
      $DescribeGeofenceCollectionResponse->PricingPlanDataSource;
    my $UpdateTime = $DescribeGeofenceCollectionResponse->UpdateTime;

# Returns a L<Paws::LocationService::DescribeGeofenceCollectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/DescribeGeofenceCollection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionName => Str

The name of the geofence collection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGeofenceCollection in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

