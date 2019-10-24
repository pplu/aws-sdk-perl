# Generated from json/callresult_class.tt

package Paws::SageMaker::DescribeSubscribedWorkteamResponse;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::SageMaker::Types qw/SageMaker_SubscribedWorkteam/;
  has SubscribedWorkteam => (is => 'ro', isa => SageMaker_SubscribedWorkteam, required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SubscribedWorkteam' => {
                                         'class' => 'Paws::SageMaker::SubscribedWorkteam',
                                         'type' => 'SageMaker_SubscribedWorkteam'
                                       }
             },
  'IsRequired' => {
                    'SubscribedWorkteam' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeSubscribedWorkteamResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> SubscribedWorkteam => SageMaker_SubscribedWorkteam

A C<Workteam> instance that contains information about the work team.


=head2 _request_id => Str


=cut

1;