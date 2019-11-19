# Generated from json/callresult_class.tt

package Paws::StepFunctions::ListTagsForResourceOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::StepFunctions::Types qw/StepFunctions_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[StepFunctions_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Tags' => {
                           'class' => 'Paws::StepFunctions::Tag',
                           'type' => 'ArrayRef[StepFunctions_Tag]'
                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Tags' => 'tags'
                     }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[StepFunctions_Tag]

An array of tags associated with the resource.


=head2 _request_id => Str


=cut

1;