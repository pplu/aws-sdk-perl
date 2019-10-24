# Generated from json/callresult_class.tt

package Paws::GameLift::DescribeBuildOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_Build/;
  has Build => (is => 'ro', isa => GameLift_Build);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Build' => {
                            'class' => 'Paws::GameLift::Build',
                            'type' => 'GameLift_Build'
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

Paws::GameLift::DescribeBuildOutput

=head1 ATTRIBUTES


=head2 Build => GameLift_Build

Set of properties describing the requested build.


=head2 _request_id => Str


=cut

1;