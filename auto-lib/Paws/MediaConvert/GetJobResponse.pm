
package Paws::MediaConvert::GetJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw/MediaConvert_Job/;
  has Job => (is => 'ro', isa => MediaConvert_Job);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Job' => {
                          'class' => 'Paws::MediaConvert::Job',
                          'type' => 'MediaConvert_Job'
                        },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Job' => 'job'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::GetJobResponse

=head1 ATTRIBUTES


=head2 Job => MediaConvert_Job

Each job converts an input file into an output file or files. For more
information, see the User Guide at
http://docs.aws.amazon.com/mediaconvert/latest/ug/what-is.html


=head2 _request_id => Str


=cut

