
package Paws::ApplicationMigration::SourceServer;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has DataReplicationInfo => (is => 'ro', isa => 'Paws::ApplicationMigration::DataReplicationInfo', traits => ['NameInRequest'], request_name => 'dataReplicationInfo');
  has IsArchived => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isArchived');
  has LaunchedInstance => (is => 'ro', isa => 'Paws::ApplicationMigration::LaunchedInstance', traits => ['NameInRequest'], request_name => 'launchedInstance');
  has LifeCycle => (is => 'ro', isa => 'Paws::ApplicationMigration::LifeCycle', traits => ['NameInRequest'], request_name => 'lifeCycle');
  has SourceProperties => (is => 'ro', isa => 'Paws::ApplicationMigration::SourceProperties', traits => ['NameInRequest'], request_name => 'sourceProperties');
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID');
  has Tags => (is => 'ro', isa => 'Paws::ApplicationMigration::TagsMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::SourceServer

=head1 ATTRIBUTES


=head2 Arn => Str

Source server ARN.


=head2 DataReplicationInfo => L<Paws::ApplicationMigration::DataReplicationInfo>

Source server data replication info.


=head2 IsArchived => Bool

Source server archived status.


=head2 LaunchedInstance => L<Paws::ApplicationMigration::LaunchedInstance>

Source server launched instance.


=head2 LifeCycle => L<Paws::ApplicationMigration::LifeCycle>

Source server lifecycle state.


=head2 SourceProperties => L<Paws::ApplicationMigration::SourceProperties>

Source server properties.


=head2 SourceServerID => Str

Source server ID.


=head2 Tags => L<Paws::ApplicationMigration::TagsMap>

Source server Tags.


=head2 _request_id => Str


=cut

