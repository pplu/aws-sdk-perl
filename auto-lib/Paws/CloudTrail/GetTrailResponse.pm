# Generated from json/callresult_class.tt

package Paws::CloudTrail::GetTrailResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudTrail::Types qw/CloudTrail_Trail/;
  has Trail => (is => 'ro', isa => CloudTrail_Trail);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Trail' => {
                            'type' => 'CloudTrail_Trail',
                            'class' => 'Paws::CloudTrail::Trail'
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

Paws::CloudTrail::GetTrailResponse

=head1 ATTRIBUTES


=head2 Trail => CloudTrail_Trail




=head2 _request_id => Str


=cut

1;