
package Paws::IoT::AssociateTargetsWithJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has Description => (is => 'ro', isa => Str);
  has JobArn => (is => 'ro', isa => Str);
  has JobId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobId' => {
                            'type' => 'Str'
                          },
               'Description' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'JobArn' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'JobId' => 'jobId',
                       'JobArn' => 'jobArn',
                       'Description' => 'description'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AssociateTargetsWithJobResponse

=head1 ATTRIBUTES


=head2 Description => Str

A short text description of the job.


=head2 JobArn => Str

An ARN identifying the job.


=head2 JobId => Str

The unique identifier you assigned to this job when it was created.


=head2 _request_id => Str


=cut

