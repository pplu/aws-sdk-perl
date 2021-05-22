
package Paws::GameLift::DescribeFleetLocationAttributesOutput;
  use Moose;
  has FleetArn => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has LocationAttributes => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::LocationAttributes]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeFleetLocationAttributesOutput

=head1 ATTRIBUTES


=head2 FleetArn => Str

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/AmazonS3/latest/dev/s3-arn-format.html))
that is assigned to a GameLift fleet resource and uniquely identifies
it. ARNs are unique across all Regions. Format is
C<arn:aws:gamelift:E<lt>regionE<gt>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912>.


=head2 FleetId => Str

A unique identifier for the fleet that location attributes were
requested for.


=head2 LocationAttributes => ArrayRef[L<Paws::GameLift::LocationAttributes>]

Location-specific information on the requested fleet's remote
locations.


=head2 NextToken => Str

A token that indicates where to resume retrieving results on the next
call to this operation. If no token is returned, these results
represent the end of the list.


=head2 _request_id => Str


=cut

1;