# Generated from json/callresult_class.tt

package Paws::Glue::GetJobBookmarkResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_JobBookmarkEntry/;
  has JobBookmarkEntry => (is => 'ro', isa => Glue_JobBookmarkEntry);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobBookmarkEntry' => {
                                       'class' => 'Paws::Glue::JobBookmarkEntry',
                                       'type' => 'Glue_JobBookmarkEntry'
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

Paws::Glue::GetJobBookmarkResponse

=head1 ATTRIBUTES


=head2 JobBookmarkEntry => Glue_JobBookmarkEntry

A structure that defines a point that a job can resume processing.


=head2 _request_id => Str


=cut

1;