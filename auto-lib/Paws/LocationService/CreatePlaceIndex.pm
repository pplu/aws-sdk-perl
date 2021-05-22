
package Paws::LocationService::CreatePlaceIndex;
  use Moose;
  has DataSource => (is => 'ro', isa => 'Str', required => 1);
  has DataSourceConfiguration => (is => 'ro', isa => 'Paws::LocationService::DataSourceConfiguration');
  has Description => (is => 'ro', isa => 'Str');
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has PricingPlan => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlaceIndex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/places/v0/indexes');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::CreatePlaceIndexResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CreatePlaceIndex - Arguments for method CreatePlaceIndex on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePlaceIndex on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method CreatePlaceIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePlaceIndex.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $CreatePlaceIndexResponse = $geo->CreatePlaceIndex(
      DataSource              => 'MyString',
      IndexName               => 'MyResourceName',
      PricingPlan             => 'RequestBasedUsage',
      DataSourceConfiguration => {
        IntendedUse => 'SingleUse',    # values: SingleUse, Storage; OPTIONAL
      },    # OPTIONAL
      Description => 'MyResourceDescription',    # OPTIONAL
    );

    # Results:
    my $CreateTime = $CreatePlaceIndexResponse->CreateTime;
    my $IndexArn   = $CreatePlaceIndexResponse->IndexArn;
    my $IndexName  = $CreatePlaceIndexResponse->IndexName;

    # Returns a L<Paws::LocationService::CreatePlaceIndexResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/CreatePlaceIndex>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DataSource => Str

Specifies the data provider of geospatial data.

This field is case-sensitive. Enter the valid values as shown. For
example, entering C<HERE> will return an error.

Valid values include:

=over

=item *

C<Esri>

=item *

C<Here>

=back

For additional details on data providers, see the Amazon Location
Service data providers page
(https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html).



=head2 DataSourceConfiguration => L<Paws::LocationService::DataSourceConfiguration>

Specifies the data storage option for requesting Places.



=head2 Description => Str

The optional description for the Place index resource.



=head2 B<REQUIRED> IndexName => Str

The name of the Place index resource.

Requirements:

=over

=item *

Contain only alphanumeric characters (A-Z, a-z, 0-9) , hyphens (-),
periods (.), and underscores (_).

=item *

Must be a unique Place index resource name.

=item *

No spaces allowed. For example, C<ExamplePlaceIndex>.

=back




=head2 B<REQUIRED> PricingPlan => Str

Specifies the pricing plan for your Place index resource.

For additional details and restrictions on each pricing plan option,
see the Amazon Location Service pricing page
(https://aws.amazon.com/location/pricing/).

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePlaceIndex in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

