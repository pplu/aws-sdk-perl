# Generated from json/callresult_class.tt

package Paws::GameLift::UpdateScriptOutput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::GameLift::Types qw/GameLift_Script/;
  has Script => (is => 'ro', isa => GameLift_Script);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Script' => {
                             'class' => 'Paws::GameLift::Script',
                             'type' => 'GameLift_Script'
                           }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateScriptOutput

=head1 ATTRIBUTES


=head2 Script => GameLift_Script

The newly created script record with a unique script ID. The new
script's storage location reflects an Amazon S3 location: (1) If the
script was uploaded from an S3 bucket under your account, the storage
location reflects the information that was provided in the
I<CreateScript> request; (2) If the script file was uploaded from a
local zip file, the storage location reflects an S3 location controls
by the Amazon GameLift service.


=head2 _request_id => Str


=cut

1;