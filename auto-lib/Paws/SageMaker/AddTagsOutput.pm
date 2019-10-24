# Generated from json/callresult_class.tt

package Paws::SageMaker::AddTagsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_Tag/;
  has Tags => (is => 'ro', isa => ArrayRef[SageMaker_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::SageMaker::Tag',
                           'type' => 'ArrayRef[SageMaker_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::AddTagsOutput

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[SageMaker_Tag]

A list of tags associated with the Amazon SageMaker resource.


=head2 _request_id => Str


=cut

1;