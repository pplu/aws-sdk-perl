
package Paws::Glacier::InitiateJobOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glacier::Types qw//;
  has JobId => (is => 'ro', isa => Str);
  has JobOutputPath => (is => 'ro', isa => Str);
  has Location => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Location' => {
                               'type' => 'Str'
                             },
               'JobId' => {
                            'type' => 'Str'
                          },
               'JobOutputPath' => {
                                    'type' => 'Str'
                                  }
             },
  'ParamInHeader' => {
                       'Location' => 'Location',
                       'JobId' => 'x-amz-job-id',
                       'JobOutputPath' => 'x-amz-job-output-path'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::InitiateJobOutput

=head1 ATTRIBUTES


=head2 JobId => Str

The ID of the job.


=head2 JobOutputPath => Str

The path to the location of where the select results are stored.


=head2 Location => Str

The relative URI path of the job.


=head2 _request_id => Str


=cut

