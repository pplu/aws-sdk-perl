
package Paws::IoT::CreateJobResponse;
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
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'JobId' => {
                            'type' => 'Str'
                          },
               'Description' => {
                                  'type' => 'Str'
                                },
               'JobArn' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'JobId' => 'jobId',
                       'Description' => 'description',
                       'JobArn' => 'jobArn'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreateJobResponse

=head1 ATTRIBUTES


=head2 Description => Str

The job description.


=head2 JobArn => Str

The job ARN.


=head2 JobId => Str

The unique identifier you assigned to this job.


=head2 _request_id => Str


=cut

