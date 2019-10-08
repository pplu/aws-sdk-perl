
package Paws::EC2::CancelImportTaskResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::EC2::Types qw//;
  has ImportTaskId => (is => 'ro', isa => Str);
  has PreviousState => (is => 'ro', isa => Str);
  has State => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
      sub params_map {
    our $Params_map ||= {
  'types' => {
               'PreviousState' => {
                                    'type' => 'Str'
                                  },
               'ImportTaskId' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'State' => {
                            'type' => 'Str'
                          }
             },
  'NameInRequest' => {
                       'PreviousState' => 'previousState',
                       'ImportTaskId' => 'importTaskId',
                       'State' => 'state'
                     }
}
;
      return $Params_map;
    }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CancelImportTaskResult

=head1 ATTRIBUTES


=head2 ImportTaskId => Str

The ID of the task being canceled.


=head2 PreviousState => Str

The current state of the task being canceled.


=head2 State => Str

The current state of the task being canceled.


=head2 _request_id => Str


=cut

