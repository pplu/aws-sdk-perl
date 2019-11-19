# Generated from json/callresult_class.tt

package Paws::ComprehendMedical::StopEntitiesDetectionV2JobResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ComprehendMedical::Types qw//;
  has JobId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'JobId' => {
                            'type' => 'Str'
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

Paws::ComprehendMedical::StopEntitiesDetectionV2JobResponse

=head1 ATTRIBUTES


=head2 JobId => Str

The identifier of the medical entities detection job that was stopped.


=head2 _request_id => Str


=cut

1;