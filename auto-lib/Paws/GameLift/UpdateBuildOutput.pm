# Generated from json/callresult_class.tt

package Paws::GameLift::UpdateBuildOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_Build/;
  has Build => (is => 'ro', isa => GameLift_Build);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Build' => {
                            'class' => 'Paws::GameLift::Build',
                            'type' => 'GameLift_Build'
                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateBuildOutput

=head1 ATTRIBUTES


=head2 Build => GameLift_Build

Object that contains the updated build record.


=head2 _request_id => Str


=cut

1;