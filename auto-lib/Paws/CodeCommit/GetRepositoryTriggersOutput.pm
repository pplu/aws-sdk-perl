
package Paws::CodeCommit::GetRepositoryTriggersOutput;
  use Moose;
  has ConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configurationId' );
  has Triggers => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::RepositoryTrigger]', traits => ['NameInRequest'], request_name => 'triggers' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetRepositoryTriggersOutput

=head1 ATTRIBUTES


=head2 ConfigurationId => Str

The system-generated unique ID for the trigger.


=head2 Triggers => ArrayRef[L<Paws::CodeCommit::RepositoryTrigger>]

The JSON block of configuration information for each trigger.


=head2 _request_id => Str


=cut

1;