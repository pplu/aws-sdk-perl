# Generated from json/callresult_class.tt

package Paws::DynamoDB::ListTagsOfResourceOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DynamoDB::Types qw/DynamoDB_Tag/;
  has NextToken => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[DynamoDB_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Tags' => {
                           'type' => 'ArrayRef[DynamoDB_Tag]',
                           'class' => 'Paws::DynamoDB::Tag'
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

Paws::DynamoDB::ListTagsOfResourceOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If this value is returned, there are additional results to be
displayed. To retrieve them, call ListTagsOfResource again, with
NextToken set to this value.


=head2 Tags => ArrayRef[DynamoDB_Tag]

The tags currently associated with the Amazon DynamoDB resource.


=head2 _request_id => Str


=cut

1;