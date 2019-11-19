
package Paws::Batch::UpdateJobQueueResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Batch::Types qw//;
  has JobQueueArn => (is => 'ro', isa => Str);
  has JobQueueName => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
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
             },
  'NameInRequest' => {
                       'JobQueueArn' => 'jobQueueArn',
                       'JobQueueName' => 'jobQueueName'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::UpdateJobQueueResponse

=head1 ATTRIBUTES


=head2 JobQueueArn => Str

The Amazon Resource Name (ARN) of the job queue.


=head2 JobQueueName => Str

The name of the job queue.


=head2 _request_id => Str


=cut

