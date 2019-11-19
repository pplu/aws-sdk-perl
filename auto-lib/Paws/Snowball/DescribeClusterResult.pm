# Generated from json/callresult_class.tt

package Paws::Snowball::DescribeClusterResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Snowball::Types qw/Snowball_ClusterMetadata/;
  has ClusterMetadata => (is => 'ro', isa => Snowball_ClusterMetadata);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'ClusterMetadata' => {
                                      'class' => 'Paws::Snowball::ClusterMetadata',
                                      'type' => 'Snowball_ClusterMetadata'
                                    }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::Snowball::DescribeClusterResult

=head1 ATTRIBUTES


=head2 ClusterMetadata => Snowball_ClusterMetadata

Information about a specific cluster, including shipping information,
cluster status, and other important metadata.


=head2 _request_id => Str


=cut

1;