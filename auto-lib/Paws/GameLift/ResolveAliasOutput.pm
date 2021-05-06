
package Paws::GameLift::ResolveAliasOutput;
  use Moose;
  has FleetArn => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ResolveAliasOutput

=head1 ATTRIBUTES


=head2 FleetArn => Str

The Amazon Resource Name (ARN
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html))
associated with the GameLift fleet resource that this alias points to.


=head2 FleetId => Str

The fleet identifier that the alias is pointing to.


=head2 _request_id => Str


=cut

1;