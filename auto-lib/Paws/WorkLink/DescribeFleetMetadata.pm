
package Paws::WorkLink::DescribeFleetMetadata;
  use Moose;
  has FleetArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFleetMetadata');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/describeFleetMetadata');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkLink::DescribeFleetMetadataResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkLink::DescribeFleetMetadata - Arguments for method DescribeFleetMetadata on L<Paws::WorkLink>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFleetMetadata on the
L<Amazon WorkLink|Paws::WorkLink> service. Use the attributes of this class
as arguments to method DescribeFleetMetadata.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFleetMetadata.

=head1 SYNOPSIS

    my $worklink = Paws->service('WorkLink');
    my $DescribeFleetMetadataResponse = $worklink->DescribeFleetMetadata(
      FleetArn => 'MyFleetArn',

    );

    # Results:
    my $CompanyCode     = $DescribeFleetMetadataResponse->CompanyCode;
    my $CreatedTime     = $DescribeFleetMetadataResponse->CreatedTime;
    my $DisplayName     = $DescribeFleetMetadataResponse->DisplayName;
    my $FleetName       = $DescribeFleetMetadataResponse->FleetName;
    my $FleetStatus     = $DescribeFleetMetadataResponse->FleetStatus;
    my $LastUpdatedTime = $DescribeFleetMetadataResponse->LastUpdatedTime;
    my $OptimizeForEndUserLocation =
      $DescribeFleetMetadataResponse->OptimizeForEndUserLocation;

    # Returns a L<Paws::WorkLink::DescribeFleetMetadataResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/worklink/DescribeFleetMetadata>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetArn => Str

The ARN of the fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFleetMetadata in L<Paws::WorkLink>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

