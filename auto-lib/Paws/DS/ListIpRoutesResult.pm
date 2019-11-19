# Generated from json/callresult_class.tt

package Paws::DS::ListIpRoutesResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::DS::Types qw/DS_IpRouteInfo/;
  has IpRoutesInfo => (is => 'ro', isa => ArrayRef[DS_IpRouteInfo]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'IpRoutesInfo' => {
                                   'type' => 'ArrayRef[DS_IpRouteInfo]',
                                   'class' => 'Paws::DS::IpRouteInfo'
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

Paws::DS::ListIpRoutesResult

=head1 ATTRIBUTES


=head2 IpRoutesInfo => ArrayRef[DS_IpRouteInfo]

A list of IpRoutes.


=head2 NextToken => Str

If not null, more results are available. Pass this value for the
I<NextToken> parameter in a subsequent call to ListIpRoutes to retrieve
the next set of items.


=head2 _request_id => Str


=cut

1;