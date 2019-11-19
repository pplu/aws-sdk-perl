# Generated from json/callresult_class.tt

package Paws::AppStream::DescribeSessionsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppStream::Types qw/AppStream_Session/;
  has NextToken => (is => 'ro', isa => Str);
  has Sessions => (is => 'ro', isa => ArrayRef[AppStream_Session]);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Sessions' => {
                               'type' => 'ArrayRef[AppStream_Session]',
                               'class' => 'Paws::AppStream::Session'
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

Paws::AppStream::DescribeSessionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 Sessions => ArrayRef[AppStream_Session]

Information about the streaming sessions.


=head2 _request_id => Str


=cut

1;