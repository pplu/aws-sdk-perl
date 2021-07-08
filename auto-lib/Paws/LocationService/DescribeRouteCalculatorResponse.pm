
package Paws::LocationService::DescribeRouteCalculatorResponse;
  use Moose;
  has CalculatorArn => (is => 'ro', isa => 'Str', required => 1);
  has CalculatorName => (is => 'ro', isa => 'Str', required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has DataSource => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has PricingPlan => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::LocationService::TagMap');
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::DescribeRouteCalculatorResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CalculatorArn => Str

The Amazon Resource Name (ARN) for the Route calculator resource. Use
the ARN when you specify a resource across AWS.

=over

=item *

Format example:
C<arn:aws:geo:region:account-id:route-calculator/ExampleCalculator>

=back



=head2 B<REQUIRED> CalculatorName => Str

The name of the route calculator resource being described.


=head2 B<REQUIRED> CreateTime => Str

The timestamp when the route calculator resource was created in ISO
8601 (https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.

=over

=item *

For example, C<2020E<ndash>07-2T12:15:20.000Z+01:00>

=back



=head2 B<REQUIRED> DataSource => Str

The data provider of traffic and road network data. Indicates one of
the available providers:

=over

=item *

C<Esri>

=item *

C<Here>

=back

For more information about data providers, see Amazon Location Service
data providers
(https://docs.aws.amazon.com/location/latest/developerguide/what-is-data-provider.html).


=head2 B<REQUIRED> Description => Str

The optional description of the route calculator resource.


=head2 B<REQUIRED> PricingPlan => Str

The pricing plan selected for the specified route calculator resource.

For additional details and restrictions on each pricing plan option,
see Amazon Location Service pricing
(https://aws.amazon.com/location/pricing/).

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">
=head2 Tags => L<Paws::LocationService::TagMap>

Tags associated with route calculator resource.


=head2 B<REQUIRED> UpdateTime => Str

The timestamp when the route calculator resource was last updated in
ISO 8601 (https://www.iso.org/iso-8601-date-and-time-format.html)
format: C<YYYY-MM-DDThh:mm:ss.sssZ>.

=over

=item *

For example, C<2020E<ndash>07-2T12:15:20.000Z+01:00>

=back



=head2 _request_id => Str


=cut

