
package Paws::LocationService::CreateTracker;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has PricingPlan => (is => 'ro', isa => 'Str', required => 1);
  has PricingPlanDataSource => (is => 'ro', isa => 'Str');
  has TrackerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTracker');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tracking/v0/trackers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::CreateTrackerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::CreateTracker - Arguments for method CreateTracker on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTracker on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method CreateTracker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTracker.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $CreateTrackerResponse = $geo->CreateTracker(
      PricingPlan           => 'RequestBasedUsage',
      TrackerName           => 'MyResourceName',
      Description           => 'MyResourceDescription',    # OPTIONAL
      PricingPlanDataSource => 'MyString',                 # OPTIONAL
    );

    # Results:
    my $CreateTime  = $CreateTrackerResponse->CreateTime;
    my $TrackerArn  = $CreateTrackerResponse->TrackerArn;
    my $TrackerName = $CreateTrackerResponse->TrackerName;

    # Returns a L<Paws::LocationService::CreateTrackerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/CreateTracker>

=head1 ATTRIBUTES


=head2 Description => Str

An optional description for the tracker resource.



=head2 B<REQUIRED> PricingPlan => Str

Specifies the pricing plan for your tracker resource.

For additional details and restrictions on each pricing plan option,
see the Amazon Location Service pricing page
(https://aws.amazon.com/location/pricing/).

Valid values are: C<"RequestBasedUsage">, C<"MobileAssetTracking">, C<"MobileAssetManagement">

=head2 PricingPlanDataSource => Str

Specifies the plan data source. Required if the Mobile Asset Tracking
(MAT) or the Mobile Asset Management (MAM) pricing plan is selected.

Billing is determined by the resource usage, the associated pricing
plan, and data source that was specified. For more information about
each pricing plan option and restrictions, see the Amazon Location
Service pricing page (https://aws.amazon.com/location/pricing/).

Valid Values: C<Esri> | C<Here>



=head2 B<REQUIRED> TrackerName => Str

The name for the tracker resource.

Requirements:

=over

=item *

Contain only alphanumeric characters (A-Z, a-z, 0-9) , hyphens (-),
periods (.), and underscores (_).

=item *

Must be a unique tracker resource name.

=item *

No spaces allowed. For example, C<ExampleTracker>.

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTracker in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

