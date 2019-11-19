# Generated from json/callresult_class.tt

package Paws::SimpleWorkflow::ListTagsForResourceOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SimpleWorkflow::Types qw/SimpleWorkflow_ResourceTag/;
  has Tags => (is => 'ro', isa => ArrayRef[SimpleWorkflow_ResourceTag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Tags' => 'tags'
                     },
  'types' => {
               'Tags' => {
                           'class' => 'Paws::SimpleWorkflow::ResourceTag',
                           'type' => 'ArrayRef[SimpleWorkflow_ResourceTag]'
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

Paws::SimpleWorkflow::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[SimpleWorkflow_ResourceTag]

An array of tags associated with the domain.


=head2 _request_id => Str


=cut

1;