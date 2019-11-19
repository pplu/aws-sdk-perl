# Generated from json/callresult_class.tt

package Paws::OpsWorksCM::RestoreServerResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::OpsWorksCM::Types qw//;

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
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

Paws::OpsWorksCM::RestoreServerResponse

=head1 ATTRIBUTES


=head2 _request_id => Str


=cut

1;