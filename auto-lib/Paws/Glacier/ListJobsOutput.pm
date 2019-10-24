
package Paws::Glacier::ListJobsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glacier::Types qw/Glacier_GlacierJobDescription/;
  has JobList => (is => 'ro', isa => ArrayRef[Glacier_GlacierJobDescription]);
  has Marker => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobList' => {
                              'class' => 'Paws::Glacier::GlacierJobDescription',
                              'type' => 'ArrayRef[Glacier_GlacierJobDescription]'
                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Marker' => {
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

Paws::Glacier::ListJobsOutput

=head1 ATTRIBUTES


=head2 JobList => ArrayRef[Glacier_GlacierJobDescription]

A list of job objects. Each job object contains metadata describing the
job.


=head2 Marker => Str

An opaque string used for pagination that specifies the job at which
the listing of jobs should begin. You get the C<marker> value from a
previous List Jobs response. You only need to include the marker if you
are continuing the pagination of the results started in a previous List
Jobs request.


=head2 _request_id => Str


=cut

