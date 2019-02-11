package Paws::Datasync::S3Config;
  use Moose;
  has BucketAccessRoleArn => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::S3Config

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Datasync::S3Config object:

  $service_obj->Method(Att1 => { BucketAccessRoleArn => $value, ..., BucketAccessRoleArn => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Datasync::S3Config object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketAccessRoleArn

=head1 DESCRIPTION

The Amazon Resource Name (ARN) of the AWS Identity and Access
Management (IAM) role that is used to access an Amazon S3 bucket. For
detailed information about using such a role, see Components and
Terminology
(https://alpha-aws-docs.aws.amazon.com/sync-service/latest/userguide/create-locations-cli.html#create-location-s3-cli)
in the I<AWS DataSync User Guide>.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketAccessRoleArn => Str

  The Amazon S3 bucket to access. This bucket is used as a parameter in
the CreateLocationS3 operation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Datasync>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

