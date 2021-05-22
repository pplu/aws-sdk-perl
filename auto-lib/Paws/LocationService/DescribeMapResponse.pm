
package Paws::LocationService::DescribeMapResponse;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::LocationService::MapConfiguration', required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has DataSource => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has MapArn => (is => 'ro', isa => 'Str', required => 1);
  has MapName => (is => 'ro', isa => 'Str', required => 1);
  has PricingPlan => (is => 'ro', isa => 'Str', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::DescribeMapResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Configuration => L<Paws::LocationService::MapConfiguration>

Specifies the map tile style selected from a partner data provider.


=head2 B<REQUIRED> CreateTime => Str

The timestamp for when the map resource was created in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 B<REQUIRED> DataSource => Str

Specifies the data provider for the associated map tiles.


=head2 B<REQUIRED> Description => Str

The optional description for the map resource.


=head2 B<REQUIRED> MapArn => Str

The Amazon Resource Name (ARN) for the map resource. Used when you need
to specify a resource across all AWS.


=head2 B<REQUIRED> MapName => Str

The map style selected from an available provider.


=head2 B<REQUIRED> PricingPlan => Str

The pricing plan selected for the specified map resource.

 <p>For additional details and restrictions on each pricing plan option, see the <a href="https://aws.amazon.com/location/pricing/">Amazon Location Service pricing page</a>.</p>

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">
=head2 B<REQUIRED> UpdateTime => Str

The timestamp for when the map resource was last update in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 _request_id => Str


=cut

