# Generated from json/callresult_class.tt

package Paws::StepFunctions::ListStateMachinesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StepFunctions::Types qw/StepFunctions_StateMachineListItem/;
  has NextToken => (is => 'ro', isa => Str);
  has StateMachines => (is => 'ro', isa => ArrayRef[StepFunctions_StateMachineListItem], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'StateMachines' => 1
                  },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'StateMachines' => 'stateMachines'
                     },
  'types' => {
               'StateMachines' => {
                                    'type' => 'ArrayRef[StepFunctions_StateMachineListItem]',
                                    'class' => 'Paws::StepFunctions::StateMachineListItem'
                                  },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::ListStateMachinesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours. Using an expired pagination token will return an I<HTTP 400
InvalidToken> error.


=head2 B<REQUIRED> StateMachines => ArrayRef[StepFunctions_StateMachineListItem]




=head2 _request_id => Str


=cut

1;