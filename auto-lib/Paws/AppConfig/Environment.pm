
package Paws::AppConfig::Environment;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Monitors => (is => 'ro', isa => 'ArrayRef[Paws::AppConfig::Monitor]');
  has Name => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppConfig::Environment

=head1 ATTRIBUTES


=head2 ApplicationId => Str

The application ID.


=head2 Description => Str

The description of the environment.


=head2 Id => Str

The environment ID.


=head2 Monitors => ArrayRef[L<Paws::AppConfig::Monitor>]

Amazon CloudWatch alarms monitored during the deployment.


=head2 Name => Str

The name of the environment.


=head2 State => Str

The state of the environment. An environment can be in one of the
following states: C<READY_FOR_DEPLOYMENT>, C<DEPLOYING>,
C<ROLLING_BACK>, or C<ROLLED_BACK>

Valid values are: C<"READY_FOR_DEPLOYMENT">, C<"DEPLOYING">, C<"ROLLING_BACK">, C<"ROLLED_BACK">
=head2 _request_id => Str


=cut

