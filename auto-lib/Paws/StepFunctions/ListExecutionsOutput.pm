# Generated from json/callresult_class.tt

package Paws::StepFunctions::ListExecutionsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StepFunctions::Types qw/StepFunctions_ExecutionListItem/;
  has Executions => (is => 'ro', isa => ArrayRef[StepFunctions_ExecutionListItem], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Executions' => {
                                 'class' => 'Paws::StepFunctions::ExecutionListItem',
                                 'type' => 'ArrayRef[StepFunctions_ExecutionListItem]'
                               },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'NextToken' => 'nextToken',
                       'Executions' => 'executions'
                     },
  'IsRequired' => {
                    'Executions' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::ListExecutionsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Executions => ArrayRef[StepFunctions_ExecutionListItem]

The list of matching executions.


=head2 NextToken => Str

If C<nextToken> is returned, there are more results available. The
value of C<nextToken> is a unique pagination token for each page. Make
the call again using the returned token to retrieve the next page. Keep
all other arguments unchanged. Each pagination token expires after 24
hours. Using an expired pagination token will return an I<HTTP 400
InvalidToken> error.


=head2 _request_id => Str


=cut

1;