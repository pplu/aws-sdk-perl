# Generated from json/callresult_class.tt

package Paws::CodePipeline::ListActionTypesOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodePipeline::Types qw/CodePipeline_ActionType/;
  has ActionTypes => (is => 'ro', isa => ArrayRef[CodePipeline_ActionType], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ActionTypes' => {
                                  'type' => 'ArrayRef[CodePipeline_ActionType]',
                                  'class' => 'Paws::CodePipeline::ActionType'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'IsRequired' => {
                    'ActionTypes' => 1
                  },
  'NameInRequest' => {
                       'ActionTypes' => 'actionTypes',
                       'NextToken' => 'nextToken'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::ListActionTypesOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionTypes => ArrayRef[CodePipeline_ActionType]

Provides details of the action types.


=head2 NextToken => Str

If the amount of returned information is significantly large, an
identifier is also returned. It can be used in a subsequent list action
types call to return the next set of action types in the list.


=head2 _request_id => Str


=cut

1;