
package Paws::ApplicationMigration::LaunchConfiguration;
  use Moose;
  has CopyPrivateIp => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'copyPrivateIp');
  has CopyTags => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'copyTags');
  has Ec2LaunchTemplateID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ec2LaunchTemplateID');
  has LaunchDisposition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchDisposition');
  has Licensing => (is => 'ro', isa => 'Paws::ApplicationMigration::Licensing', traits => ['NameInRequest'], request_name => 'licensing');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID');
  has TargetInstanceTypeRightSizingMethod => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetInstanceTypeRightSizingMethod');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::LaunchConfiguration

=head1 ATTRIBUTES


=head2 CopyPrivateIp => Bool

Copy Private IP during Launch Configuration.


=head2 CopyTags => Bool

Copy Tags during Launch Configuration.


=head2 Ec2LaunchTemplateID => Str

Configure EC2 lauch configuration template ID.


=head2 LaunchDisposition => Str

Configure launch dispostion for launch configuration.

Valid values are: C<"STOPPED">, C<"STARTED">
=head2 Licensing => L<Paws::ApplicationMigration::Licensing>

Configure launch configuration OS licensing.


=head2 Name => Str

Configure launch configuration name.


=head2 SourceServerID => Str

Configure launch configuration Source Server ID.


=head2 TargetInstanceTypeRightSizingMethod => Str

Configure launch configuration Target instance type right sizing
method.

Valid values are: C<"NONE">, C<"BASIC">
=head2 _request_id => Str


=cut

