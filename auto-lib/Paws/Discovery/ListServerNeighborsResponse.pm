# Generated from json/callresult_class.tt

package Paws::Discovery::ListServerNeighborsResponse;
  use Moo;
  use Types::Standard qw/Str Int ArrayRef/;
  use Paws::Discovery::Types qw/Discovery_NeighborConnectionDetail/;
  has KnownDependencyCount => (is => 'ro', isa => Int);
  has Neighbors => (is => 'ro', isa => ArrayRef[Discovery_NeighborConnectionDetail], required => 1);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Neighbors' => {
                                'class' => 'Paws::Discovery::NeighborConnectionDetail',
                                'type' => 'ArrayRef[Discovery_NeighborConnectionDetail]'
                              },
               'KnownDependencyCount' => {
                                           'type' => 'Int'
                                         },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             },
  'NameInRequest' => {
                       'Neighbors' => 'neighbors',
                       'KnownDependencyCount' => 'knownDependencyCount',
                       'NextToken' => 'nextToken'
                     },
  'IsRequired' => {
                    'Neighbors' => 1
                  }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ListServerNeighborsResponse

=head1 ATTRIBUTES


=head2 KnownDependencyCount => Int

Count of distinct servers that are one hop away from the given server.


=head2 B<REQUIRED> Neighbors => ArrayRef[Discovery_NeighborConnectionDetail]

List of distinct servers that are one hop away from the given server.


=head2 NextToken => Str

Token to retrieve the next set of results. For example, if you
specified 100 IDs for
C<ListServerNeighborsRequest$neighborConfigurationIds> but set
C<ListServerNeighborsRequest$maxResults> to 10, you received a set of
10 results along with this token. Use this token in the next query to
retrieve the next set of 10.


=head2 _request_id => Str


=cut

1;