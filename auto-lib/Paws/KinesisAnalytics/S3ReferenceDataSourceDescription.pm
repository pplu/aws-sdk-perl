package Paws::KinesisAnalytics::S3ReferenceDataSourceDescription;
  use Moose;
  has BucketARN => (is => 'ro', isa => 'Str', required => 1);
  has FileKey => (is => 'ro', isa => 'Str', required => 1);
  has ReferenceRoleARN => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::S3ReferenceDataSourceDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::S3ReferenceDataSourceDescription object:

  $service_obj->Method(Att1 => { BucketARN => $value, ..., ReferenceRoleARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::S3ReferenceDataSourceDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketARN

=head1 DESCRIPTION

Provides the bucket name and object key name that stores the reference
data.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BucketARN => Str

  Amazon Resource Name (ARN) of the S3 bucket.


=head2 B<REQUIRED> FileKey => Str

  Amazon S3 object key name.


=head2 B<REQUIRED> ReferenceRoleARN => Str

  ARN of the IAM role that Amazon Kinesis Analytics can assume to read
the Amazon S3 object on your behalf to populate the in-application
reference table.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

