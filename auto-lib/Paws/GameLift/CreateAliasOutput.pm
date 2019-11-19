# Generated from json/callresult_class.tt

package Paws::GameLift::CreateAliasOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_Alias/;
  has Alias => (is => 'ro', isa => GameLift_Alias);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Alias' => {
                            'class' => 'Paws::GameLift::Alias',
                            'type' => 'GameLift_Alias'
                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::CreateAliasOutput

=head1 ATTRIBUTES


=head2 Alias => GameLift_Alias

Object that describes the newly created alias record.


=head2 _request_id => Str


=cut

1;