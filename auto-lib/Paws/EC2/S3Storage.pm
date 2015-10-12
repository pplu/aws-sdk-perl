package Paws::EC2::S3Storage;
  use Moose;
  has AWSAccessKeyId => (is => 'ro', isa => 'Str');
  has Bucket => (is => 'ro', isa => 'Str', xmlname => 'bucket', traits => ['Unwrapped']);
  has Prefix => (is => 'ro', isa => 'Str', xmlname => 'prefix', traits => ['Unwrapped']);
  has UploadPolicy => (is => 'ro', isa => 'Str', xmlname => 'uploadPolicy', traits => ['Unwrapped']);
  has UploadPolicySignature => (is => 'ro', isa => 'Str', xmlname => 'uploadPolicySignature', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::S3Storage

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::S3Storage object:

  $service_obj->Method(Att1 => { AWSAccessKeyId => $value, ..., UploadPolicySignature => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::S3Storage object:

  $result = $service_obj->Method(...);
  $result->Att1->AWSAccessKeyId

=head1 ATTRIBUTES

=head2 AWSAccessKeyId => Str

  

The access key ID of the owner of the bucket. Before you specify a
value for your access key ID, review and follow the guidance in Best
Practices for Managing AWS Access Keys.










=head2 Bucket => Str

  

The bucket in which to store the AMI. You can specify a bucket that you
already own or a new bucket that Amazon EC2 creates on your behalf. If
you specify a bucket that belongs to someone else, Amazon EC2 returns
an error.










=head2 Prefix => Str

  

The beginning of the file name of the AMI.










=head2 UploadPolicy => Str

  

A Base64-encoded Amazon S3 upload policy that gives Amazon EC2
permission to upload items into Amazon S3 on your behalf.










=head2 UploadPolicySignature => Str

  

The signature of the Base64 encoded JSON document.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
