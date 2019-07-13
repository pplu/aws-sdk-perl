package Paws::MediaConnect::Encryption;
  use Moose;
  has Algorithm => (is => 'ro', isa => 'Str', request_name => 'algorithm', traits => ['NameInRequest'], required => 1);
  has ConstantInitializationVector => (is => 'ro', isa => 'Str', request_name => 'constantInitializationVector', traits => ['NameInRequest']);
  has DeviceId => (is => 'ro', isa => 'Str', request_name => 'deviceId', traits => ['NameInRequest']);
  has KeyType => (is => 'ro', isa => 'Str', request_name => 'keyType', traits => ['NameInRequest']);
  has Region => (is => 'ro', isa => 'Str', request_name => 'region', traits => ['NameInRequest']);
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest']);
  has RoleArn => (is => 'ro', isa => 'Str', request_name => 'roleArn', traits => ['NameInRequest'], required => 1);
  has SecretArn => (is => 'ro', isa => 'Str', request_name => 'secretArn', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::Encryption

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::Encryption object:

  $service_obj->Method(Att1 => { Algorithm => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::Encryption object:

  $result = $service_obj->Method(...);
  $result->Att1->Algorithm

=head1 DESCRIPTION

Information about the encryption of the flow.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Algorithm => Str

  The type of algorithm that is used for the encryption (such as aes128,
aes192, or aes256).


=head2 ConstantInitializationVector => Str

  A 128-bit, 16-byte hex value represented by a 32-character string, to
be used with the key for encrypting content. This parameter is not
valid for static key encryption.


=head2 DeviceId => Str

  The value of one of the devices that you configured with your digital
rights management (DRM) platform key provider. This parameter is
required for SPEKE encryption and is not valid for static key
encryption.


=head2 KeyType => Str

  The type of key that is used for the encryption. If no keyType is
provided, the service will use the default setting (static-key).


=head2 Region => Str

  The AWS Region that the API Gateway proxy endpoint was created in. This
parameter is required for SPEKE encryption and is not valid for static
key encryption.


=head2 ResourceId => Str

  An identifier for the content. The service sends this value to the key
server to identify the current endpoint. The resource ID is also known
as the content ID. This parameter is required for SPEKE encryption and
is not valid for static key encryption.


=head2 B<REQUIRED> RoleArn => Str

  The ARN of the role that you created during setup (when you set up AWS
Elemental MediaConnect as a trusted entity).


=head2 SecretArn => Str

  The ARN of the secret that you created in AWS Secrets Manager to store
the encryption key. This parameter is required for static key
encryption and is not valid for SPEKE encryption.


=head2 Url => Str

  The URL from the API Gateway proxy that you set up to talk to your key
server. This parameter is required for SPEKE encryption and is not
valid for static key encryption.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

