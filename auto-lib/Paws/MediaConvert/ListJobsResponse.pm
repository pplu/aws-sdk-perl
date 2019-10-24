
package Paws::MediaConvert::ListJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::MediaConvert::Types qw/MediaConvert_Job/;
  has Jobs => (is => 'ro', isa => ArrayRef[MediaConvert_Job]);
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
                           'class' => 'Paws::MediaConvert::Job',
                           'type' => 'ArrayRef[MediaConvert_Job]'
                         }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Jobs' => 'jobs'
                     }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::ListJobsResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[MediaConvert_Job]

List of jobs


=head2 NextToken => Str

Use this string to request the next batch of jobs.


=head2 _request_id => Str


=cut

