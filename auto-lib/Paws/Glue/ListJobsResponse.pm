# Generated from json/callresult_class.tt

package Paws::Glue::ListJobsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::Glue::Types qw//;
  has JobNames => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'JobNames' => {
                               'type' => 'ArrayRef[Str|Undef]'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListJobsResponse

=head1 ATTRIBUTES


=head2 JobNames => ArrayRef[Str|Undef]

The names of all jobs in the account, or the jobs with the specified
tags.


=head2 NextToken => Str

A continuation token, if the returned list does not contain the last
metric available.


=head2 _request_id => Str


=cut

1;