package Paws::KinesisAnalyticsV2::ReferenceDataSourceDescription;
  use Moose;
  has ReferenceId => (is => 'ro', isa => 'Str', required => 1);
  has ReferenceSchema => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::SourceSchema');
  has S3ReferenceDataSourceDescription => (is => 'ro', isa => 'Paws::KinesisAnalyticsV2::S3ReferenceDataSourceDescription', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ReferenceDataSourceDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::ReferenceDataSourceDescription object:

  $service_obj->Method(Att1 => { ReferenceId => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::ReferenceDataSourceDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ReferenceId

=head1 DESCRIPTION

For an SQL-based Amazon Kinesis Data Analytics application, describes
the reference data source configured for an application.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReferenceId => Str

  The ID of the reference data source. This is the ID that Kinesis Data
Analytics assigns when you add the reference data source to your
application using the CreateApplication or UpdateApplication operation.


=head2 ReferenceSchema => L<Paws::KinesisAnalyticsV2::SourceSchema>

  Describes the format of the data in the streaming source, and how each
data element maps to corresponding columns created in the
in-application stream.


=head2 B<REQUIRED> S3ReferenceDataSourceDescription => L<Paws::KinesisAnalyticsV2::S3ReferenceDataSourceDescription>

  Provides the Amazon S3 bucket name, the object key name that contains
the reference data.


=head2 B<REQUIRED> TableName => Str

  The in-application table name created by the specific reference data
source configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

