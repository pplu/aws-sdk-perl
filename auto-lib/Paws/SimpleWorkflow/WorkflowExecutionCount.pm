# Generated from json/callresult_class.tt

package Paws::SimpleWorkflow::WorkflowExecutionCount;
  use Moo;
  use Types::Standard qw/Str Int Bool/;
  use Paws::SimpleWorkflow::Types qw//;
  has Count => (is => 'ro', isa => Int, required => 1);
  has Truncated => (is => 'ro', isa => Bool);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Truncated' => {
                                'type' => 'Bool'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Count' => {
                            'type' => 'Int'
                          }
             },
  'NameInRequest' => {
                       'Truncated' => 'truncated',
                       'Count' => 'count'
                     },
  'IsRequired' => {
                    'Count' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::WorkflowExecutionCount

=head1 ATTRIBUTES


=head2 B<REQUIRED> Count => Int

The number of workflow executions.


=head2 Truncated => Bool

If set to true, indicates that the actual count was more than the
maximum supported by this API and the count returned is the truncated
value.


=head2 _request_id => Str


=cut

1;