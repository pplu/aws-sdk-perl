# Generated from json/callresult_class.tt

package Paws::SageMaker::ListSubscribedWorkteamsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_SubscribedWorkteam/;
  has NextToken => (is => 'ro', isa => Str);
  has SubscribedWorkteams => (is => 'ro', isa => ArrayRef[SageMaker_SubscribedWorkteam], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'SubscribedWorkteams' => {
                                          'class' => 'Paws::SageMaker::SubscribedWorkteam',
                                          'type' => 'ArrayRef[SageMaker_SubscribedWorkteam]'
                                        }
             },
  'IsRequired' => {
                    'SubscribedWorkteams' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListSubscribedWorkteamsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of work teams, use it in the subsequent request.


=head2 B<REQUIRED> SubscribedWorkteams => ArrayRef[SageMaker_SubscribedWorkteam]

An array of C<Workteam> objects, each describing a work team.


=head2 _request_id => Str


=cut

1;