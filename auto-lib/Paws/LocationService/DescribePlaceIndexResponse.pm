
package Paws::LocationService::DescribePlaceIndexResponse;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has DataSource => (is => 'ro', isa => 'Str', required => 1);
  has DataSourceConfiguration => (is => 'ro', isa => 'Paws::LocationService::DataSourceConfiguration', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has IndexArn => (is => 'ro', isa => 'Str', required => 1);
  has IndexName => (is => 'ro', isa => 'Str', required => 1);
  has PricingPlan => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::LocationService::TagMap');
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::DescribePlaceIndexResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateTime => Str

The timestamp for when the place index resource was created in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 B<REQUIRED> DataSource => Str

The data provider of geospatial data. Indicates one of the available
providers:

=over

=item *

C<Esri>

=item *

C<Here>

=back

For additional details on data providers, see the Amazon Location
Service data providers page
(https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html).


=head2 B<REQUIRED> DataSourceConfiguration => L<Paws::LocationService::DataSourceConfiguration>

The specified data storage option for requesting Places.


=head2 B<REQUIRED> Description => Str

The optional description for the place index resource.


=head2 B<REQUIRED> IndexArn => Str

The Amazon Resource Name (ARN) for the place index resource. Used to
specify a resource across all AWS.

=over

=item *

Format example:
C<arn:aws:geo:region:account-id:place-index/ExamplePlaceIndex>

=back



=head2 B<REQUIRED> IndexName => Str

The name of the place index resource being described.


=head2 B<REQUIRED> PricingPlan => Str

The pricing plan selected for the specified place index resource.

For additional details and restrictions on each pricing plan option,
see the Amazon Location Service pricing page
(https://aws.amazon.com/location/pricing/).

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">
=head2 Tags => L<Paws::LocationService::TagMap>

Tags associated with place index resource.


=head2 B<REQUIRED> UpdateTime => Str

The timestamp for when the place index resource was last updated in ISO
8601 (https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 _request_id => Str


=cut

