
package Paws::LocationService::DescribeTrackerResponse;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has PricingPlan => (is => 'ro', isa => 'Str', required => 1);
  has PricingPlanDataSource => (is => 'ro', isa => 'Str');
  has TrackerArn => (is => 'ro', isa => 'Str', required => 1);
  has TrackerName => (is => 'ro', isa => 'Str', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::DescribeTrackerResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateTime => Str

The timestamp for when the tracker resource was created in ISO 8601
(https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 B<REQUIRED> Description => Str

The optional description for the tracker resource.


=head2 B<REQUIRED> PricingPlan => Str

The pricing plan selected for the specified tracker resource.

For additional details and restrictions on each pricing plan option,
see the Amazon Location Service pricing page
(https://aws.amazon.com/location/pricing/).

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">
=head2 PricingPlanDataSource => Str

The data source selected for the tracker resource and associated
pricing plan.


=head2 B<REQUIRED> TrackerArn => Str

The Amazon Resource Name (ARN) for the tracker resource. Used when you
need to specify a resource across all AWS.


=head2 B<REQUIRED> TrackerName => Str

The name of the tracker resource.


=head2 B<REQUIRED> UpdateTime => Str

The timestamp for when the tracker resource was last updated in ISO
8601 (https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 _request_id => Str


=cut

