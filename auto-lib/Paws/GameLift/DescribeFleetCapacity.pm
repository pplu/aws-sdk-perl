
package Paws::GameLift::DescribeFleetCapacity;
  use Moose;
  has FleetIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFleetCapacity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeFleetCapacityOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetCapacity - Arguments for method DescribeFleetCapacity on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFleetCapacity on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method DescribeFleetCapacity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFleetCapacity.

As an example:

  $service_obj->DescribeFleetCapacity(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 FleetIds => ArrayRef[Str|Undef]

Unique identifier for a fleet(s) to retrieve capacity information for.
To request capacity information for all fleets, leave this parameter
empty.



=head2 Limit => Int

Maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages. This
parameter is ignored when the request specifies one or a list of fleet
IDs.



=head2 NextToken => Str

Token that indicates the start of the next sequential page of results.
Use the token that is returned with a previous call to this action. To
specify the start of the result set, do not specify a value. This
parameter is ignored when the request specifies one or a list of fleet
IDs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFleetCapacity in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

