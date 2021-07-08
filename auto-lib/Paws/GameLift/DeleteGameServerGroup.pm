
package Paws::GameLift::DeleteGameServerGroup;
  use Moose;
  has DeleteOption => (is => 'ro', isa => 'Str');
  has GameServerGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteGameServerGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::DeleteGameServerGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DeleteGameServerGroup - Arguments for method DeleteGameServerGroup on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteGameServerGroup on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method DeleteGameServerGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteGameServerGroup.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $DeleteGameServerGroupOutput = $gamelift->DeleteGameServerGroup(
      GameServerGroupName => 'MyGameServerGroupNameOrArn',
      DeleteOption        => 'SAFE_DELETE',                  # OPTIONAL
    );

    # Results:
    my $GameServerGroup = $DeleteGameServerGroupOutput->GameServerGroup;

    # Returns a L<Paws::GameLift::DeleteGameServerGroupOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/DeleteGameServerGroup>

=head1 ATTRIBUTES


=head2 DeleteOption => Str

The type of delete to perform. Options include the following:

=over

=item *

C<SAFE_DELETE> E<ndash> (default) Terminates the game server group and
EC2 Auto Scaling group only when it has no game servers that are in
C<UTILIZED> status.

=item *

C<FORCE_DELETE> E<ndash> Terminates the game server group, including
all active game servers regardless of their utilization status, and the
EC2 Auto Scaling group.

=item *

C<RETAIN> E<ndash> Does a safe delete of the game server group but
retains the EC2 Auto Scaling group as is.

=back


Valid values are: C<"SAFE_DELETE">, C<"FORCE_DELETE">, C<"RETAIN">

=head2 B<REQUIRED> GameServerGroupName => Str

A unique identifier for the game server group. Use either the
GameServerGroup name or ARN value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteGameServerGroup in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

