# Generated from json/callresult_class.tt

package Paws::ComprehendMedical::StopPHIDetectionJobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ComprehendMedical::Types qw//;
  has JobId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'JobId' => {
                            'type' => 'Str'
                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::ComprehendMedical::StopPHIDetectionJobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The identifier of the PHI detection job that was stopped.


=head2 _request_id => Str


=cut

1;