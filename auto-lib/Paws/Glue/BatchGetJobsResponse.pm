# Generated from json/callresult_class.tt

package Paws::Glue::BatchGetJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Glue::Types qw/Glue_Job/;
  has Jobs => (is => 'ro', isa => ArrayRef[Glue_Job]);
  has JobsNotFound => (is => 'ro', isa => ArrayRef[Str|Undef]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Jobs' => {
                           'type' => 'ArrayRef[Glue_Job]',
                           'class' => 'Paws::Glue::Job'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'JobsNotFound' => {
                                   'type' => 'ArrayRef[Str|Undef]'
                                 }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchGetJobsResponse

=head1 ATTRIBUTES


=head2 Jobs => ArrayRef[Glue_Job]

A list of job definitions.


=head2 JobsNotFound => ArrayRef[Str|Undef]

A list of names of jobs not found.


=head2 _request_id => Str


=cut

1;