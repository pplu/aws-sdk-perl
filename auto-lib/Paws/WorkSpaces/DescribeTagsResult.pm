# Generated from json/callresult_class.tt

package Paws::WorkSpaces::DescribeTagsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::WorkSpaces::Types qw/WorkSpaces_Tag/;
  has TagList => (is => 'ro', isa => ArrayRef[WorkSpaces_Tag]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TagList' => {
                              'class' => 'Paws::WorkSpaces::Tag',
                              'type' => 'ArrayRef[WorkSpaces_Tag]'
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

Paws::WorkSpaces::DescribeTagsResult

=head1 ATTRIBUTES


=head2 TagList => ArrayRef[WorkSpaces_Tag]

The tags.


=head2 _request_id => Str


=cut

1;