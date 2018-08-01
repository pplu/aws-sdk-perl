package Paws::StorageGateway::SMBFileShareInfo;
  use Moose;
  has Authentication => (is => 'ro', isa => 'Str');
  has DefaultStorageClass => (is => 'ro', isa => 'Str');
  has FileShareARN => (is => 'ro', isa => 'Str');
  has FileShareId => (is => 'ro', isa => 'Str');
  has FileShareStatus => (is => 'ro', isa => 'Str');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has GuessMIMETypeEnabled => (is => 'ro', isa => 'Bool');
  has InvalidUserList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KMSEncrypted => (is => 'ro', isa => 'Bool');
  has KMSKey => (is => 'ro', isa => 'Str');
  has LocationARN => (is => 'ro', isa => 'Str');
  has ObjectACL => (is => 'ro', isa => 'Str');
  has Path => (is => 'ro', isa => 'Str');
  has ReadOnly => (is => 'ro', isa => 'Bool');
  has RequesterPays => (is => 'ro', isa => 'Bool');
  has Role => (is => 'ro', isa => 'Str');
  has ValidUserList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::SMBFileShareInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::SMBFileShareInfo object:

  $service_obj->Method(Att1 => { Authentication => $value, ..., ValidUserList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::SMBFileShareInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->Authentication

=head1 DESCRIPTION

The Windows file permissions and ownership information assigned, by
default, to native S3 objects when file gateway discovers them in S3
buckets. This operation is only supported in file gateways.

=head1 ATTRIBUTES


=head2 Authentication => Str

  


=head2 DefaultStorageClass => Str

  The default storage class for objects put into an Amazon S3 bucket by
file gateway. Possible values are S3_STANDARD, S3_STANDARD_IA or
S3_ONEZONE_IA. If this field is not populated, the default value
S3_STANDARD is used. Optional.


=head2 FileShareARN => Str

  


=head2 FileShareId => Str

  


=head2 FileShareStatus => Str

  


=head2 GatewayARN => Str

  


=head2 GuessMIMETypeEnabled => Bool

  Enables guessing of the MIME type for uploaded objects based on file
extensions. Set this value to true to enable MIME type guessing, and
otherwise to false. The default value is true.


=head2 InvalidUserList => ArrayRef[Str|Undef]

  A list of users in the Active Directory that are not allowed to access
the file share. Can only be set if Authentication is set to
"ActiveDirectory".


=head2 KMSEncrypted => Bool

  True to use Amazon S3 server side encryption with your own KMS key, or
false to use a key managed by Amazon S3. Optional.


=head2 KMSKey => Str

  


=head2 LocationARN => Str

  


=head2 ObjectACL => Str

  


=head2 Path => Str

  The file share path used by the SMB client to identify the mount point.


=head2 ReadOnly => Bool

  Sets the write status of a file share. This value is true if the write
status is read-only, and otherwise false.


=head2 RequesterPays => Bool

  Sets who pays the cost of the request and the data download from the
Amazon S3 bucket. Set this value to true if you want the requester to
pay instead of the bucket owner, and otherwise to false.


=head2 Role => Str

  


=head2 ValidUserList => ArrayRef[Str|Undef]

  A list of users in the Active Directory that are allowed to access the
file share. Can only be set if Authentication is set to
"ActiveDirectory".



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

