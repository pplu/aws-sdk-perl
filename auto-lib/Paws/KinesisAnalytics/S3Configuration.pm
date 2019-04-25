package Paws::KinesisAnalytics::S3Configuration;
  use Moose;
  has BucketARN => (is => 'ro', isa => 'Str', required => 1);
  has FileKey => (is => 'ro', isa => 'Str', required => 1);
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::S3Configuration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::S3Configuration object:

  $service_obj->Method(Att1 => { BucketARN => $value, ..., RoleARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::S3Configuration object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketARN

=head1 DESCRIPTION

Provides a description of an Amazon S3 data source, including the
Amazon Resource Name (ARN) of the S3 bucket, the ARN of the IAM role
that is used to access the bucket, and the name of the Amazon S3 object
that contains the data.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketARN => Str

  ARN of the S3 bucket that contains the data.


=head2 B<REQUIRED> FileKey => Str

  The name of the object that contains the data.


=head2 B<REQUIRED> RoleARN => Str

  IAM ARN of the role used to access the data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

