
package Paws::Batch::DescribeJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Batch::Types qw/Batch_JobDetail/;
  has Jobs => (is => 'ro', isa => ArrayRef[Batch_JobDetail]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Jobs' => {
                           'class' => 'Paws::Batch::JobDetail',
                           'type' => 'ArrayRef[Batch_JobDetail]'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Jobs' => 'jobs'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::DescribeJobsResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[Batch_JobDetail]

The list of jobs.


=head2 _request_id => Str


=cut

