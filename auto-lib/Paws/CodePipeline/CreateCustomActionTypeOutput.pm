# Generated from json/callresult_class.tt

package Paws::CodePipeline::CreateCustomActionTypeOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::CodePipeline::Types qw/CodePipeline_ActionType CodePipeline_Tag/;
  has ActionType => (is => 'ro', isa => CodePipeline_ActionType, required => 1);
  has Tags => (is => 'ro', isa => ArrayRef[CodePipeline_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ActionType' => {
                                 'type' => 'CodePipeline_ActionType',
                                 'class' => 'Paws::CodePipeline::ActionType'
                               },
               'Tags' => {
                           'type' => 'ArrayRef[CodePipeline_Tag]',
                           'class' => 'Paws::CodePipeline::Tag'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'ActionType' => 'actionType',
                       'Tags' => 'tags'
                     },
  'IsRequired' => {
                    'ActionType' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::CodePipeline::CreateCustomActionTypeOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionType => CodePipeline_ActionType

Returns information about the details of an action type.


=head2 Tags => ArrayRef[CodePipeline_Tag]

Specifies the tags applied to the custom action.


=head2 _request_id => Str


=cut

1;