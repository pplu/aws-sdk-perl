# Generated from json/callresult_class.tt

package Paws::AppStream::ListAssociatedFleetsResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef/;
  use Paws::AppStream::Types qw//;
  has Names => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Names' => {
                            'type' => 'ArrayRef[Str|Undef]'
                          }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::AppStream::ListAssociatedFleetsResult

=head1 ATTRIBUTES


=head2 Names => ArrayRef[Str|Undef]

The name of the fleet.


=head2 NextToken => Str

The pagination token to use to retrieve the next page of results for
this operation. If there are no more pages, this value is null.


=head2 _request_id => Str


=cut

1;