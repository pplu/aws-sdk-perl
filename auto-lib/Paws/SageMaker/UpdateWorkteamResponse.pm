# Generated from json/callresult_class.tt

package Paws::SageMaker::UpdateWorkteamResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw/SageMaker_Workteam/;
  has Workteam => (is => 'ro', isa => SageMaker_Workteam, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Workteam' => {
                               'class' => 'Paws::SageMaker::Workteam',
                               'type' => 'SageMaker_Workteam'
                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'Workteam' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateWorkteamResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Workteam => SageMaker_Workteam

A C<Workteam> object that describes the updated work team.


=head2 _request_id => Str


=cut

1;