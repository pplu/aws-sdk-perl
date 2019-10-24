# Generated from json/callresult_class.tt

package Paws::StorageGateway::DescribeUploadBufferOutput;
  use Moo;
  use Types::Standard qw/Str ArrayRef Undef Int/;
  use Paws::StorageGateway::Types qw//;
  has DiskIds => (is => 'ro', isa => ArrayRef[Str|Undef]);
  has GatewayARN => (is => 'ro', isa => Str);
  has UploadBufferAllocatedInBytes => (is => 'ro', isa => Int);
  has UploadBufferUsedInBytes => (is => 'ro', isa => Int);

  has _request_id => (is => 'ro', isa => Str);
    sub params_map {
    our $Params_map ||= {
  'types' => {
               'UploadBufferAllocatedInBytes' => {
                                                   'type' => 'Int'
                                                 },
               'DiskIds' => {
                              'type' => 'ArrayRef[Str|Undef]'
                            },
               'UploadBufferUsedInBytes' => {
                                              'type' => 'Int'
                                            },
               '_request_id' => {
                                  'type' => 'Str'
                                },
               'GatewayARN' => {
                                 'type' => 'Str'
                               }
             }
}
;
    return $Params_map;
  }


### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DescribeUploadBufferOutput

=head1 ATTRIBUTES


=head2 DiskIds => ArrayRef[Str|Undef]

An array of the gateway's local disk IDs that are configured as working
storage. Each local disk ID is specified as a string (minimum length of
1 and maximum length of 300). If no local disks are configured as
working storage, then the DiskIds array is empty.


=head2 GatewayARN => Str




=head2 UploadBufferAllocatedInBytes => Int

The total number of bytes allocated in the gateway's as upload buffer.


=head2 UploadBufferUsedInBytes => Int

The total number of bytes being used in the gateway's upload buffer.


=head2 _request_id => Str


=cut

1;