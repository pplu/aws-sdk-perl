# Generated from json/callresult_class.tt

package Paws::Glue::GetJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Glue::Types qw/Glue_Job/;
  has Job => (is => 'ro', isa => Glue_Job);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Job' => {
                          'type' => 'Glue_Job',
                          'class' => 'Paws::Glue::Job'
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

Paws::Glue::GetJobResponse

=head1 ATTRIBUTES


=head2 Job => Glue_Job

The requested job definition.


=head2 _request_id => Str


=cut

1;