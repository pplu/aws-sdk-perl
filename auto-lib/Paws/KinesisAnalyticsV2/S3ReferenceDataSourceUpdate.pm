package Paws::KinesisAnalyticsV2::S3ReferenceDataSourceUpdate;
  use Moose;
  has BucketARNUpdate => (is => 'ro', isa => 'Str');
  has FileKeyUpdate => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::S3ReferenceDataSourceUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::S3ReferenceDataSourceUpdate object:

  $service_obj->Method(Att1 => { BucketARNUpdate => $value, ..., FileKeyUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::S3ReferenceDataSourceUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketARNUpdate

=head1 DESCRIPTION

For an SQL-based Amazon Kinesis Data Analytics application, describes
the Amazon S3 bucket name and object key name for an in-application
reference table.

=head1 ATTRIBUTES


=head2 BucketARNUpdate => Str

  The Amazon Resource Name (ARN) of the S3 bucket.


=head2 FileKeyUpdate => Str

  The object key name.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

