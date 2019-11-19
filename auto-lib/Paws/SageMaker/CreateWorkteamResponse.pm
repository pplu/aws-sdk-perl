# Generated from json/callresult_class.tt

package Paws::SageMaker::CreateWorkteamResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw//;
  has WorkteamArn => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'WorkteamArn' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CreateWorkteamResponse

=head1 ATTRIBUTES


=head2 WorkteamArn => Str

The Amazon Resource Name (ARN) of the work team. You can use this ARN
to identify the work team.


=head2 _request_id => Str


=cut

1;