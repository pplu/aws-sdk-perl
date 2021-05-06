
package Paws::EC2::DeleteFleets;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has FleetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'FleetId' , required => 1);
  has TerminateInstances => (is => 'ro', isa => 'Bool', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFleets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DeleteFleetsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteFleets - Arguments for method DeleteFleets on L<Paws::EC2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFleets on the
L<Amazon Elastic Compute Cloud|Paws::EC2> service. Use the attributes of this class
as arguments to method DeleteFleets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFleets.

=head1 SYNOPSIS

    my $ec2 = Paws->service('EC2');
    my $DeleteFleetsResult = $ec2->DeleteFleets(
      FleetIds           => [ 'MyFleetIdentifier', ... ],
      TerminateInstances => 1,
      DryRun             => 1,                              # OPTIONAL
    );

    # Results:
    my $SuccessfulFleetDeletions =
      $DeleteFleetsResult->SuccessfulFleetDeletions;
    my $UnsuccessfulFleetDeletions =
      $DeleteFleetsResult->UnsuccessfulFleetDeletions;

    # Returns a L<Paws::EC2::DeleteFleetsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ec2/DeleteFleets>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> FleetIds => ArrayRef[Str|Undef]

The IDs of the EC2 Fleets.



=head2 B<REQUIRED> TerminateInstances => Bool

Indicates whether to terminate instances for an EC2 Fleet if it is
deleted successfully.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFleets in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

