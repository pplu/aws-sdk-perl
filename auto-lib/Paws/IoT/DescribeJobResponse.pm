
package Paws::IoT::DescribeJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw/IoT_Job/;
  has DocumentSource => (is => 'ro', isa => Str);
  has Job => (is => 'ro', isa => IoT_Job);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Job' => {
                          'class' => 'Paws::IoT::Job',
                          'type' => 'IoT_Job'
                        },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'DocumentSource' => {
                                     'type' => 'Str'
                                   }
             },
  'NameInRequest' => {
                       'Job' => 'job',
                       'DocumentSource' => 'documentSource'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeJobResponse

=head1 ATTRIBUTES


=head2 DocumentSource => Str

An S3 link to the job document.


=head2 Job => IoT_Job

Information about the job.


=head2 _request_id => Str


=cut

