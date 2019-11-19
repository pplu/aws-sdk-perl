# Generated from json/callresult_class.tt

package Paws::CodeCommit::TestRepositoryTriggersOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::CodeCommit::Types qw/CodeCommit_RepositoryTriggerExecutionFailure/;
  has FailedExecutions => (is => 'ro', isa => ArrayRef[CodeCommit_RepositoryTriggerExecutionFailure]);
  has SuccessfulExecutions => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SuccessfulExecutions' => {
                                           'type' => 'ArrayRef[Str|Undef]'
                                         },
               'FailedExecutions' => {
                                       'type' => 'ArrayRef[CodeCommit_RepositoryTriggerExecutionFailure]',
                                       'class' => 'Paws::CodeCommit::RepositoryTriggerExecutionFailure'
                                     }
             },
  'NameInRequest' => {
                       'SuccessfulExecutions' => 'successfulExecutions',
                       'FailedExecutions' => 'failedExecutions'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::TestRepositoryTriggersOutput

=head1 ATTRIBUTES


=head2 FailedExecutions => ArrayRef[CodeCommit_RepositoryTriggerExecutionFailure]

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