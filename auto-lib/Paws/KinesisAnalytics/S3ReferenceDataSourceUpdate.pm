package Paws::KinesisAnalytics::S3ReferenceDataSourceUpdate;
  use Moose;
  has BucketARNUpdate => (is => 'ro', isa => 'Str');
  has FileKeyUpdate => (is => 'ro', isa => 'Str');
  has ReferenceRoleARNUpdate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::S3ReferenceDataSourceUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::S3ReferenceDataSourceUpdate object:

  $service_obj->Method(Att1 => { BucketARNUpdate => $value, ..., ReferenceRoleARNUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::S3ReferenceDataSourceUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketARNUpdate

=head1 DESCRIPTION

Describes the S3 bucket name, object key name, and IAM role that Amazon
Kinesis Analytics can assume to read the Amazon S3 object on your
behalf and populate the in-application reference table.

=head1 ATTRIBUTES


=head2 BucketARNUpdate => Str

  Amazon Resource Name (ARN) of the S3 bucket.


=head2 FileKeyUpdate => Str

  Object key name.


=head2 ReferenceRoleARNUpdate => Str

  ARN of the IAM role that Amazon Kinesis Analytics can assume to read
the Amazon S3 object and populate the in-application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

