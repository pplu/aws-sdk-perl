# Generated from json/callresult_class.tt

package Paws::Comprehend::ListTagsForResourceResponse;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Comprehend::Types qw/Comprehend_Tag/;
  has ResourceArn => (is => 'ro', isa => Str);
  has Tags => (is => 'ro', isa => ArrayRef[Comprehend_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceArn' => {
                                  'type' => 'Str'
                                },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::Comprehend::Tag',
                           'type' => 'ArrayRef[Comprehend_Tag]'
                         }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ListTagsForResourceResponse

=head1 ATTRIBUTES


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the given Amazon Comprehend resource
you are querying.


=head2 Tags => ArrayRef[Comprehend_Tag]

Tags associated with the Amazon Comprehend resource being queried. A
tag is a key-value pair that adds as a metadata to a resource used by
Amazon Comprehend. For example, a tag with "Sales" as the key might be
added to a resource to indicate its use by the sales department.


=head2 _request_id => Str


=cut

1;