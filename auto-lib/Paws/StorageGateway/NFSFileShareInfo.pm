package Paws::StorageGateway::NFSFileShareInfo;
  use Moose;
  has ClientList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has DefaultStorageClass => (is => 'ro', isa => 'Str');
  has FileShareARN => (is => 'ro', isa => 'Str');
  has FileShareId => (is => 'ro', isa => 'Str');
  has FileShareStatus => (is => 'ro', isa => 'Str');
  has GatewayARN => (is => 'ro', isa => 'Str');
  has KMSEncrypted => (is => 'ro', isa => 'Bool');
  has KMSKey => (is => 'ro', isa => 'Str');
  has LocationARN => (is => 'ro', isa => 'Str');
  has NFSFileShareDefaults => (is => 'ro', isa => 'Paws::StorageGateway::NFSFileShareDefaults');
  has Path => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::NFSFileShareInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::NFSFileShareInfo object:

  $service_obj->Method(Att1 => { ClientList => $value, ..., Role => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::NFSFileShareInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientList

=head1 DESCRIPTION

The Unix file permissions and ownership information assigned, by
default, to native S3 objects when Storage Gateway discovers them in S3
buckets.

=head1 ATTRIBUTES


=head2 ClientList => ArrayRef[Str|Undef]

  


=head2 DefaultStorageClass => Str

  The default storage class for objects put into an Amazon S3 bucket by
file gateway. Possible values are S3_STANDARD or S3_STANDARD_IA. If
this field is not populated, the default value S3_STANDARD is used.
Optional.


=head2 FileShareARN => Str

  


=head2 FileShareId => Str

  


=head2 FileShareStatus => Str

  


=head2 GatewayARN => Str

  


=head2 KMSEncrypted => Bool

  True to use Amazon S3 server side encryption with your own KMS key, or
false to use a key managed by Amazon S3. Optional.


=head2 KMSKey => Str

  


=head2 LocationARN => Str

  


=head2 NFSFileShareDefaults => L<Paws::StorageGateway::NFSFileShareDefaults>

  


=head2 Path => Str

  


=head2 Role => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

