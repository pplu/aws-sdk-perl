
package Paws::EC2::ModifySpotFleetRequest;
  use Moose;
  has ExcessCapacityTerminationPolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'excessCapacityTerminationPolicy' );
  has SpotFleetRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spotFleetRequestId' , required => 1);
  has TargetCapacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'targetCapacity' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifySpotFleetRequest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifySpotFleetRequestResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifySpotFleetRequest - Arguments for method ModifySpotFleetRequest on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifySpotFleetRequest on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifySpotFleetRequest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifySpotFleetRequest.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    # To increase the target capacity of a Spot fleet request
    # This example increases the target capacity of the specified Spot fleet
    # request.
    my $ModifySpotFleetRequestResponse = $ec2->ModifySpotFleetRequest(
      {
        'SpotFleetRequestId' => 'sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE',
        'TargetCapacity'     => 20
      }
    );

    # Results:
    my $Return = $ModifySpotFleetRequestResponse->Return;

    # Returns a L<Paws::EC2::ModifySpotFleetRequestResponse> object.
    # To decrease the target capacity of a Spot fleet request
    # This example decreases the target capacity of the specified Spot fleet
    # request without terminating any Spot Instances as a result.
    my $ModifySpotFleetRequestResponse = $ec2->ModifySpotFleetRequest(
      {
        'ExcessCapacityTerminationPolicy' => 'NoTermination ',
        'SpotFleetRequestId' => 'sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE',
        'TargetCapacity'     => 10
      }
    );

    # Results:
    my $Return = $ModifySpotFleetRequestResponse->Return;

    # Returns a L<Paws::EC2::ModifySpotFleetRequestResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifySpotFleetRequest>

=head1 ATTRIBUTES


=head2 ExcessCapacityTerminationPolicy => Str

Indicates whether running Spot Instances should be terminated if the
target capacity of the Spot Fleet request is decreased below the
current size of the Spot Fleet.

Valid values are: C<"noTermination">, C<"default">

=head2 B<REQUIRED> SpotFleetRequestId => Str

The ID of the Spot Fleet request.



=head2 TargetCapacity => Int

The size of the fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifySpotFleetRequest in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

