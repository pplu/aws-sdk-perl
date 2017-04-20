
package Paws::CodeCommit::TestRepositoryTriggersOutput;
  use Moose;
  has FailedExecutions => (is => 'ro', isa => 'ArrayRef[Paws::CodeCommit::RepositoryTriggerExecutionFailure]', traits => ['NameInRequest'], request_name => 'failedExecutions' );
  has SuccessfulExecutions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'successfulExecutions' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::TestRepositoryTriggersOutput

=head1 ATTRIBUTES


=head2 FailedExecutions => ArrayRef[L<Paws::CodeCommit::RepositoryTriggerExecutionFailure>]

The list of triggers that were not able to be tested. This list
provides the names of the triggers that could not be tested, separated
by commas.


=head2 SuccessfulExecutions => ArrayRef[Str|Undef]

The list of triggers that were successfully tested. This list provides
the names of the triggers that were successfully tested, separated by
commas.


=head2 _request_id => Str


=cut

1;