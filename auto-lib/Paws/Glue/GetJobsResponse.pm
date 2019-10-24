# Generated from json/callresult_class.tt

package Paws::Glue::GetJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Glue::Types qw/Glue_Job/;
  has Jobs => (is => 'ro', isa => ArrayRef[Glue_Job]);
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
                           'class' => 'Paws::Glue::Job',
                           'type' => 'ArrayRef[Glue_Job]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetJobsResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[Glue_Job]

A list of job definitions.


=head2 NextToken => Str

A continuation token, if not all job definitions have yet been
returned.


=head2 _request_id => Str


=cut

1;