
package Paws::LocationService::DescribeTracker;
  use Moose;
  has TrackerName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'TrackerName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeTracker');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tracking/v0/trackers/{TrackerName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LocationService::DescribeTrackerResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::DescribeTracker - Arguments for method DescribeTracker on L<Paws::LocationService>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeTracker on the
L<Amazon Location Service|Paws::LocationService> service. Use the attributes of this class
as arguments to method DescribeTracker.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeTracker.

=head1 SYNOPSIS

    my $geo = Paws->service('LocationService');
    my $DescribeTrackerResponse = $geo->DescribeTracker(
      TrackerName => 'MyResourceName',

    );

    # Results:
    my $CreateTime            = $DescribeTrackerResponse->CreateTime;
    my $Description           = $DescribeTrackerResponse->Description;
    my $KmsKeyId              = $DescribeTrackerResponse->KmsKeyId;
    my $PricingPlan           = $DescribeTrackerResponse->PricingPlan;
    my $PricingPlanDataSource = $DescribeTrackerResponse->PricingPlanDataSource;
    my $Tags                  = $DescribeTrackerResponse->Tags;
    my $TrackerArn            = $DescribeTrackerResponse->TrackerArn;
    my $TrackerName           = $DescribeTrackerResponse->TrackerName;
    my $UpdateTime            = $DescribeTrackerResponse->UpdateTime;

    # Returns a L<Paws::LocationService::DescribeTrackerResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/geo/DescribeTracker>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrackerName => Str

The name of the tracker resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeTracker in L<Paws::LocationService>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

