
package Paws::S3::ListBucketsOutput;
  use Moo;

  use Types::Standard qw/Str ArrayRef/;
  use Paws::S3::Types qw/S3_Owner S3_Bucket/;
  has Buckets => (is => 'ro', isa => ArrayRef[S3_Bucket]);
  has Owner => (is => 'ro', isa => S3_Owner);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Buckets' => {
                              'type' => 'ArrayRef[S3_Bucket]',
                              'class' => 'Paws::S3::Bucket'
                            },
               'Owner' => {
                            'class' => 'Paws::S3::Owner',
                            'type' => 'S3_Owner'
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

Paws::S3::ListBucketsOutput

=head1 ATTRIBUTES


=head2 Buckets => ArrayRef[S3_Bucket]

The list of buckets owned by the requestor.



=head2 Owner => S3_Owner

The owner of the buckets listed.




=cut

