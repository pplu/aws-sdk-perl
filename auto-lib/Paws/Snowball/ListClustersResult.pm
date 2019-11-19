# Generated from json/callresult_class.tt

package Paws::Snowball::ListClustersResult;
  use Moo;
  use Types::Standard qw/Str ArrayRef/;
  use Paws::Snowball::Types qw/Snowball_ClusterListEntry/;
  has ClusterListEntries => (is => 'ro', isa => ArrayRef[Snowball_ClusterListEntry]);
  has NextToken => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClusterListEntries' => {
                                         'class' => 'Paws::Snowball::ClusterListEntry',
                                         'type' => 'ArrayRef[Snowball_ClusterListEntry]'
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

Paws::Snowball::ListClustersResult

=head1 ATTRIBUTES


=head2 ClusterListEntries => ArrayRef[Snowball_ClusterListEntry]

Each C<ClusterListEntry> object contains a cluster's state, a cluster's
ID, and other important status information.


=head2 NextToken => Str

HTTP requests are stateless. If you use the automatically generated
C<NextToken> value in your next C<ClusterListEntry> call, your list of
returned clusters will start from this point in the array.


=head2 _request_id => Str


=cut

1;