
package Paws::Batch::CreateJobQueueResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Batch::Types qw//;
  has JobQueueArn => (is => 'ro', isa => Str, required => 1);
  has JobQueueName => (is => 'ro', isa => Str, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'JobQueueArn' => 'jobQueueArn',
                       'JobQueueName' => 'jobQueueName'
                     },
  'IsRequired' => {
                    'JobQueueName' => 1,
                    'JobQueueArn' => 1
                  },
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'JobQueueArn' => {
                                  'type' => 'Str'
                                },
               'JobQueueName' => {
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

Paws::Batch::CreateJobQueueResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobQueueArn => Str

The Amazon Resource Name (ARN) of the job queue.


=head2 B<REQUIRED> JobQueueName => Str

The name of the job queue.


=head2 _request_id => Str


=cut

