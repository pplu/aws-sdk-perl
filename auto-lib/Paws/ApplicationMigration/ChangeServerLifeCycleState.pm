
package Paws::ApplicationMigration::ChangeServerLifeCycleState;
  use Moose;
  has LifeCycle => (is => 'ro', isa => 'Paws::ApplicationMigration::ChangeServerLifeCycleStateSourceServerLifecycle', traits => ['NameInRequest'], request_name => 'lifeCycle', required => 1);
  has SourceServerID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceServerID', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ChangeServerLifeCycleState');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ChangeServerLifeCycleState');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::SourceServer');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::ChangeServerLifeCycleState - Arguments for method ChangeServerLifeCycleState on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ChangeServerLifeCycleState on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method ChangeServerLifeCycleState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ChangeServerLifeCycleState.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $SourceServer = $mgn->ChangeServerLifeCycleState(
      LifeCycle => {
        State =>
          'READY_FOR_TEST', # values: READY_FOR_TEST, READY_FOR_CUTOVER, CUTOVER

      },
      SourceServerID => 'MySourceServerID',

    );

    # Results:
    my $Arn                 = $SourceServer->Arn;
    my $DataReplicationInfo = $SourceServer->DataReplicationInfo;
    my $IsArchived          = $SourceServer->IsArchived;
    my $LaunchedInstance    = $SourceServer->LaunchedInstance;
    my $LifeCycle           = $SourceServer->LifeCycle;
    my $SourceProperties    = $SourceServer->SourceProperties;
    my $SourceServerID      = $SourceServer->SourceServerID;
    my $Tags                = $SourceServer->Tags;

    # Returns a L<Paws::ApplicationMigration::SourceServer> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/ChangeServerLifeCycleState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> LifeCycle => L<Paws::ApplicationMigration::ChangeServerLifeCycleStateSourceServerLifecycle>

The request to change the source server migration lifecycle state.



=head2 B<REQUIRED> SourceServerID => Str

The request to change the source server migration lifecycle state by
source server ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ChangeServerLifeCycleState in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

