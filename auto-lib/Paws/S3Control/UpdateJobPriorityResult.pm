
package Paws::S3Control::UpdateJobPriorityResult;
  use Moo;

  use Types::Standard qw/Str Int/;
  use Paws::S3Control::Types qw//;
  has JobId => (is => 'ro', isa => Str, required => 1);
  has Priority => (is => 'ro', isa => Int, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'JobId' => 1,
                    'Priority' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Priority' => {
                               'type' => 'Int'
                             },
               'JobId' => {
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

Paws::S3Control::UpdateJobPriorityResult

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The ID for the job whose priority Amazon S3 updated.



=head2 B<REQUIRED> Priority => Int

The new priority assigned to the specified job.




=cut

