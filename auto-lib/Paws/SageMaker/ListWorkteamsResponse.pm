# Generated from json/callresult_class.tt

package Paws::SageMaker::ListWorkteamsResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_Workteam/;
  has NextToken => (is => 'ro', isa => Str);
  has Workteams => (is => 'ro', isa => ArrayRef[SageMaker_Workteam], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Workteams' => {
                                'class' => 'Paws::SageMaker::Workteam',
                                'type' => 'ArrayRef[SageMaker_Workteam]'
                              },
               'NextToken' => {
                                'type' => 'Str'
                              }
             },
  'IsRequired' => {
                    'Workteams' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListWorkteamsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If the response is truncated, Amazon SageMaker returns this token. To
retrieve the next set of work teams, use it in the subsequent request.


=head2 B<REQUIRED> Workteams => ArrayRef[SageMaker_Workteam]

An array of C<Workteam> objects, each describing a work team.


=head2 _request_id => Str


=cut

1;