# Generated from json/callresult_class.tt

package Paws::SageMaker::ListTagsOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::SageMaker::Types qw/SageMaker_Tag/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[SageMaker_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'type' => 'ArrayRef[SageMaker_Tag]',
                           'class' => 'Paws::SageMaker::Tag'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::ListTagsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If response is truncated, Amazon SageMaker includes a token in the
response. You can use this token in your subsequent request to fetch
next set of tokens.


=head2 Tags => ArrayRef[SageMaker_Tag]

An array of C<Tag> objects, each with a tag key and a value.


=head2 _request_id => Str


=cut

1;