# Generated from json/callresult_class.tt

package Paws::StepFunctions::GetExecutionHistoryOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StepFunctions::Types qw/StepFunctions_HistoryEvent/;
  has Events => (is => 'ro', isa => ArrayRef[StepFunctions_HistoryEvent], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Events' => 1
                  },
  'NameInRequest' => {
                       'Events' => 'events',
                       'NextToken' => 'nextToken'
                     },
  'types' => {
               'Events' => {
                             'type' => 'ArrayRef[StepFunctions_HistoryEvent]',
                             'class' => 'Paws::StepFunctions::HistoryEvent'
                           },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::StepFunctions::GetExecutionHistoryOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Events => ArrayRef[StepFunctions_HistoryEvent]

The list of events that occurred in the execution.


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