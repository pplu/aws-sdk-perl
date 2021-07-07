
package Paws::LocationService::CreateGeofenceCollection;
  use Moose;
  has CollectionName => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has PricingPlan => (is => 'ro', isa => 'Str', required => 1);
  has PricingPlanDataSource => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::LocationService::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGeofenceCollection');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/geofencing/v0/collections');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::CreateGeofenceCollectionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CreateGeofenceCollection - Arguments for method CreateGeofenceCollection on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGeofenceCollection on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method CreateGeofenceCollection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGeofenceCollection.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $CreateGeofenceCollectionResponse = $geo->CreateGeofenceCollection(
      CollectionName        => 'MyResourceName',
      PricingPlan           => 'RequestBasedUsage',
      Description           => 'MyResourceDescription',    # OPTIONAL
      KmsKeyId              => 'MyKmsKeyId',               # OPTIONAL
      PricingPlanDataSource => 'MyString',                 # OPTIONAL
      Tags                  => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $CollectionArn  = $CreateGeofenceCollectionResponse->CollectionArn;
    my $CollectionName = $CreateGeofenceCollectionResponse->CollectionName;
    my $CreateTime     = $CreateGeofenceCollectionResponse->CreateTime;

  # Returns a L<Paws::LocationService::CreateGeofenceCollectionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/CreateGeofenceCollection>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionName => Str

A custom name for the geofence collection.

Requirements:

=over

=item *

Contain only alphanumeric characters (AE<ndash>Z, aE<ndash>z,
0E<ndash>9), hyphens (-), periods (.), and underscores (_).

=item *

Must be a unique geofence collection name.

=item *

No spaces allowed. For example, C<ExampleGeofenceCollection>.

=back




=head2 Description => Str

An optional description for the geofence collection.



=head2 KmsKeyId => Str

A key identifier for an AWS KMS customer managed key
(https://docs.aws.amazon.com/kms/latest/developerguide/create-keys.html).
Enter a key ID, key ARN, alias name, or alias ARN.



=head2 B<REQUIRED> PricingPlan => Str

Specifies the pricing plan for the geofence collection.

For additional details and restrictions on each pricing plan option,
see the Amazon Location Service pricing page
(https://aws.amazon.com/location/pricing/).

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">

=head2 PricingPlanDataSource => Str

Specifies the data provider for the geofence collection.

=over

=item *

Required value for the following pricing plans: C<MobileAssetTracking
>| C<MobileAssetManagement>

=back

For more information about Data Providers
(https://aws.amazon.com/location/data-providers/), and Pricing plans
(https://aws.amazon.com/location/pricing/), see the Amazon Location
Service product page.

Amazon Location Service only uses C<PricingPlanDataSource> to calculate
billing for your geofence collection. Your data won't be shared with
the data provider, and will remain in your AWS account or Region unless
you move it.

Valid Values: C<Esri >| C<Here>



=head2 Tags => L<Paws::LocationService::TagMap>

Applies one or more tags to the geofence collection. A tag is a
key-value pair helps manage, identify, search, and filter your
resources by labelling them.

Format: C<"key" : "value">

Restrictions:

=over

=item *

Maximum 50 tags per resource

=item *

Each resource tag must be unique with a maximum of one value.

=item *

Maximum key length: 128 Unicode characters in UTF-8

=item *

Maximum value length: 256 Unicode characters in UTF-8

=item *

Can use alphanumeric characters (AE<ndash>Z, aE<ndash>z, 0E<ndash>9),
and the following characters: + - = . _ : / @.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGeofenceCollection in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

