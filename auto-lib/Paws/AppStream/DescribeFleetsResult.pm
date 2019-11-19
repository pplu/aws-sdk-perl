# Generated from json/callresult_class.tt

package Paws::AppStream::DescribeFleetsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::AppStream::Types qw/AppStream_Fleet/;
  has Fleets => (is => 'ro', isa => ArrayRef[AppStream_Fleet]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Fleets' => {
                             'type' => 'ArrayRef[AppStream_Fleet]',
                             'class' => 'Paws::AppStream::Fleet'
                           },
               'NextToken' => {
                                'type' => 'Str'
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

Paws::AppStream::DescribeFleetsResult

=head1 ATTRIBUTES


=head2 Fleets => ArrayRef[AppStream_Fleet]

Information about the fleets.


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

1;