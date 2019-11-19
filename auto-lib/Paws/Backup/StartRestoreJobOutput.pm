
package Paws::Backup::StartRestoreJobOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Backup::Types qw//;
  has RestoreJobId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RestoreJobId' => {
                                   'type' => 'Str'
                                 },
               '_request_id' => {
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

Paws::Backup::StartRestoreJobOutput

=head1 ATTRIBUTES


=head2 RestoreJobId => Str

Uniquely identifies the job that restores a recovery point.


=head2 _request_id => Str


=cut

