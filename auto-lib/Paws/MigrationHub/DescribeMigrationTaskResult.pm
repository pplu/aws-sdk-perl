# Generated from json/callresult_class.tt

package Paws::MigrationHub::DescribeMigrationTaskResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MigrationHub::Types qw/MigrationHub_MigrationTask/;
  has MigrationTask => (is => 'ro', isa => MigrationHub_MigrationTask);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'MigrationTask' => {
                                    'class' => 'Paws::MigrationHub::MigrationTask',
                                    'type' => 'MigrationHub_MigrationTask'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::DescribeMigrationTaskResult

=head1 ATTRIBUTES


=head2 MigrationTask => MigrationHub_MigrationTask

Object encapsulating information about the migration task.


=head2 _request_id => Str


=cut

1;