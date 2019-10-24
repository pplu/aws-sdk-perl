# Generated from json/callresult_class.tt

package Paws::Kinesis::ListTagsForStreamOutput;
  use Moo;
  use Types::Standard qw/Str Bool ArrayRef/;
  use Paws::Kinesis::Types qw/Kinesis_Tag/;
  has HasMoreTags => (is => 'ro', isa => Bool, required => 1);
  has Tags => (is => 'ro', isa => ArrayRef[Kinesis_Tag], required => 1);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Tags' => {
                           'class' => 'Paws::Kinesis::Tag',
                           'type' => 'ArrayRef[Kinesis_Tag]'
                         },
               'HasMoreTags' => {
                                  'type' => 'Bool'
                                }
             },
  'IsRequired' => {
                    'Tags' => 1,
                    'HasMoreTags' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::ListTagsForStreamOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> HasMoreTags => Bool

If set to C<true>, more tags are available. To request additional tags,
set C<ExclusiveStartTagKey> to the key of the last tag returned.


=head2 B<REQUIRED> Tags => ArrayRef[Kinesis_Tag]

A list of tags associated with C<StreamName>, starting with the first
tag after C<ExclusiveStartTagKey> and up to the specified C<Limit>.


=head2 _request_id => Str


=cut

1;