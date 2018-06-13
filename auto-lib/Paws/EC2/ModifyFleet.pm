
package Paws::EC2::ModifyFleet;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has ExcessCapacityTerminationPolicy => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has TargetCapacitySpecification => (is => 'ro', isa => 'Paws::EC2::TargetCapacitySpecificationRequest', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyFleet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifyFleetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyFleet - Arguments for method ModifyFleet on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyFleet on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method ModifyFleet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyFleet.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $ModifyFleetResult = $ec2->ModifyFleet(
      FleetId                     => 'MyFleetIdentifier',
      TargetCapacitySpecification => {
        TotalTargetCapacity       => 1,
        DefaultTargetCapacityType => 'spot', # values: spot, on-demand; OPTIONAL
        OnDemandTargetCapacity    => 1,
        SpotTargetCapacity        => 1,
      },
      DryRun                          => 1,                   # OPTIONAL
      ExcessCapacityTerminationPolicy => 'no-termination',    # OPTIONAL
    );

    # Results:
    my $Return = $ModifyFleetResult->Return;

    # Returns a L<Paws::EC2::ModifyFleetResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/ModifyFleet>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 ExcessCapacityTerminationPolicy => Str

Indicates whether running instances should be terminated if the total
target capacity of the EC2 Fleet is decreased below the current size of
the EC2 Fleet.

Valid values are: C<"no-termination">, C<"termination">

=head2 B<REQUIRED> FleetId => Str

The ID of the EC2 Fleet.



=head2 B<REQUIRED> TargetCapacitySpecification => L<Paws::EC2::TargetCapacitySpecificationRequest>

The size of the EC2 Fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyFleet in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

