
package Paws::GameLift::DescribeFleetLocationAttributes;
  use Moose;
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has Locations => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeFleetLocationAttributes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DescribeFleetLocationAttributesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetLocationAttributes - Arguments for method DescribeFleetLocationAttributes on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeFleetLocationAttributes on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DescribeFleetLocationAttributes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeFleetLocationAttributes.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DescribeFleetLocationAttributesOutput =
      $gamelift->DescribeFleetLocationAttributes(
      FleetId   => 'MyFleetIdOrArn',
      Limit     => 1,                  # OPTIONAL
      Locations => [
        'MyLocationStringModel', ...    # min: 1, max: 64
      ],                                # OPTIONAL
      NextToken => 'MyNonZeroAndMaxString',    # OPTIONAL
      );

    # Results:
    my $FleetArn = $DescribeFleetLocationAttributesOutput->FleetArn;
    my $FleetId  = $DescribeFleetLocationAttributesOutput->FleetId;
    my $LocationAttributes =
      $DescribeFleetLocationAttributesOutput->LocationAttributes;
    my $NextToken = $DescribeFleetLocationAttributesOutput->NextToken;

    # Returns a L<Paws::GameLift::DescribeFleetLocationAttributesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DescribeFleetLocationAttributes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> FleetId => Str

A unique identifier for the fleet to retrieve remote locations for. You
can use either the fleet ID or ARN value.



=head2 Limit => Int

The maximum number of results to return. Use this parameter with
C<NextToken> to get results as a set of sequential pages. This limit is
not currently enforced.



=head2 Locations => ArrayRef[Str|Undef]

A list of fleet locations to retrieve information for. Specify
locations in the form of an AWS Region code, such as C<us-west-2>.



=head2 NextToken => Str

A token that indicates the start of the next sequential page of
results. Use the token that is returned with a previous call to this
operation. To start at the beginning of the result set, do not specify
a value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeFleetLocationAttributes in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

