# Generated from json/callresult_class.tt

package Paws::Snowball::CreateClusterResult;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Snowball::Types qw//;
  has ClusterId => (is => 'ro', isa => Str);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ClusterId' => {
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

Paws::Snowball::CreateClusterResult

=head1 ATTRIBUTES


=head2 ClusterId => Str

The automatically generated ID for a cluster.


=head2 _request_id => Str


=cut

1;