
package Paws::S3Control::UpdateJobStatusResult;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3Control::Types qw//;
  has JobId => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);
  has StatusUpdateReason => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Status' => {
                             'type' => 'Str'
                           },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'JobId' => {
                            'type' => 'Str'
                          },
               'StatusUpdateReason' => {
                                         'type' => 'Str'
                                       }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::UpdateJobStatusResult

=head1 ATTRIBUTES


=head2 JobId => Str

The ID for the job whose status was updated.



=head2 Status => Str

The current status for the specified job.

Valid values are: C<"Active">, C<"Cancelled">, C<"Cancelling">, C<"Complete">, C<"Completing">, C<"Failed">, C<"Failing">, C<"New">, C<"Paused">, C<"Pausing">, C<"Preparing">, C<"Ready">, C<"Suspended">

=head2 StatusUpdateReason => Str

The reason that the specified job's status was updated.




=cut

