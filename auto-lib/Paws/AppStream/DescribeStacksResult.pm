# Generated from json/callresult_class.tt

package Paws::AppStream::DescribeStacksResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppStream::Types qw/AppStream_Stack/;
  has NextToken => (is => 'ro', isa => Str);
  has Stacks => (is => 'ro', isa => ArrayRef[AppStream_Stack]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'Stacks' => {
                             'class' => 'Paws::AppStream::Stack',
                             'type' => 'ArrayRef[AppStream_Stack]'
                           },
               'NextToken' => {
                                'type' => 'Str'
                              }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeStacksResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 Stacks => ArrayRef[AppStream_Stack]

Information about the stacks.


=head2 _request_id => Str


=cut

1;