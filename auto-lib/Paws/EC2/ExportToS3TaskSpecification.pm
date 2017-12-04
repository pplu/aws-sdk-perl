package Paws::EC2::ExportToS3TaskSpecification;
  use Moose;
  has ContainerFormat => (is => 'ro', isa => 'Str', request_name => 'containerFormat', traits => ['NameInRequest']);
  has DiskImageFormat => (is => 'ro', isa => 'Str', request_name => 'diskImageFormat', traits => ['NameInRequest']);
  has S3Bucket => (is => 'ro', isa => 'Str', request_name => 's3Bucket', traits => ['NameInRequest']);
  has S3Prefix => (is => 'ro', isa => 'Str', request_name => 's3Prefix', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ExportToS3TaskSpecification

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ExportToS3TaskSpecification object:

  $service_obj->Method(Att1 => { ContainerFormat => $value, ..., S3Prefix => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ExportToS3TaskSpecification object:

  $result = $service_obj->Method(...);
  $result->Att1->ContainerFormat

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ContainerFormat => Str

  The container format used to combine disk images with metadata (such as
OVF). If absent, only the disk image is exported.


=head2 DiskImageFormat => Str

  The format for the exported image.


=head2 S3Bucket => Str

  The S3 bucket for the destination image. The destination bucket must
exist and grant WRITE and READ_ACP permissions to the AWS account
C<vm-import-export@amazon.com>.


=head2 S3Prefix => Str

  The image is written to a single object in the S3 bucket at the S3 key
s3prefix + exportTaskId + '.' + diskImageFormat.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
