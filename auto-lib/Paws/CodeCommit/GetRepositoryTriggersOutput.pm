# Generated from json/callresult_class.tt

package Paws::CodeCommit::GetRepositoryTriggersOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodeCommit::Types qw/CodeCommit_RepositoryTrigger/;
  has ConfigurationId => (is => 'ro', isa => Str);
  has Triggers => (is => 'ro', isa => ArrayRef[CodeCommit_RepositoryTrigger]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ConfigurationId' => {
                                      'type' => 'Str'
                                    },
               'Triggers' => {
                               'class' => 'Paws::CodeCommit::RepositoryTrigger',
                               'type' => 'ArrayRef[CodeCommit_RepositoryTrigger]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ConfigurationId' => 'configurationId',
                       'Triggers' => 'triggers'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodeCommit::GetRepositoryTriggersOutput

=head1 ATTRIBUTES


=head2 ConfigurationId => Str

The system-generated unique ID for the trigger.


=head2 Triggers => ArrayRef[CodeCommit_RepositoryTrigger]

The JSON block of configuration information for each trigger.


=head2 _request_id => Str


=cut

1;