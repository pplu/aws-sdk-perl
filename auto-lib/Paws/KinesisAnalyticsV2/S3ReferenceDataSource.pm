package Paws::KinesisAnalyticsV2::S3ReferenceDataSource;
  use Moose;
  has BucketARN => (is => 'ro', isa => 'Str');
  has FileKey => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::S3ReferenceDataSource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::S3ReferenceDataSource object:

  $service_obj->Method(Att1 => { BucketARN => $value, ..., FileKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::S3ReferenceDataSource object:

  $result = $service_obj->Method(...);
  $result->Att1->BucketARN

=head1 DESCRIPTION

For an SQL-based Amazon Kinesis Data Analytics application, identifies
the Amazon S3 bucket and object that contains the reference data.

A Kinesis Data Analytics application loads reference data only once. If
the data changes, you call the UpdateApplication operation to trigger
reloading of data into your application.

=head1 ATTRIBUTES


=head2 BucketARN => Str

  The Amazon Resource Name (ARN) of the S3 bucket.


=head2 FileKey => Str

  The object key name containing the reference data.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

