
package Paws::EC2::CancelImportTaskResult;
  use Moose;
  has ImportTaskId => (is => 'ro', isa => 'Str', request_name => 'importTaskId', traits => ['NameInRequest',]);
  has PreviousState => (is => 'ro', isa => 'Str', request_name => 'previousState', traits => ['NameInRequest',]);
  has State => (is => 'ro', isa => 'Str', request_name => 'state', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
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

