
package Paws::S3Control::ListJobsResult;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3Control::Types qw/S3Control_JobListDescriptor/;
  has Jobs => (is => 'ro', isa => ArrayRef[S3Control_JobListDescriptor]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Jobs' => {
                           'class' => 'Paws::S3Control::JobListDescriptor',
                           'type' => 'ArrayRef[S3Control_JobListDescriptor]'
                         }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListJobsResult

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[S3Control_JobListDescriptor]

The list of current jobs and jobs that have ended within the last 30
days.



=head2 NextToken => Str

If the C<List Jobs> request produced more than the maximum number of
results, you can pass this value into a subsequent C<List Jobs> request
in order to retrieve the next page of results.




=cut

