
package Paws::S3::GetBucketReplicationOutput;
  use Moo;

  use Types::Standard qw/Str/;
  use Paws::S3::Types qw/S3_ReplicationConfiguration/;
  has ReplicationConfiguration => (is => 'ro', isa => S3_ReplicationConfiguration);

  use MooX::ClassAttribute;
  class_has _payload => (is => 'ro', default => 'ReplicationConfiguration');
  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ReplicationConfiguration' => {
                                               'class' => 'Paws::S3::ReplicationConfiguration',
                                               'type' => 'S3_ReplicationConfiguration'
                                             },
               '_request_id' => {
                                  'type' => 'Str'
                                }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketReplicationOutput

=head1 ATTRIBUTES


=head2 ReplicationConfiguration => S3_ReplicationConfiguration






=cut

