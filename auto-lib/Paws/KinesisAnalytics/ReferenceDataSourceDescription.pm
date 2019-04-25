package Paws::KinesisAnalytics::ReferenceDataSourceDescription;
  use Moose;
  has ReferenceId => (is => 'ro', isa => 'Str', required => 1);
  has ReferenceSchema => (is => 'ro', isa => 'Paws::KinesisAnalytics::SourceSchema');
  has S3ReferenceDataSourceDescription => (is => 'ro', isa => 'Paws::KinesisAnalytics::S3ReferenceDataSourceDescription', required => 1);
  has TableName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::ReferenceDataSourceDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::ReferenceDataSourceDescription object:

  $service_obj->Method(Att1 => { ReferenceId => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::ReferenceDataSourceDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->ReferenceId

=head1 DESCRIPTION

Describes the reference data source configured for an application.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReferenceId => Str

  ID of the reference data source. This is the ID that Amazon Kinesis
Analytics assigns when you add the reference data source to your
application using the AddApplicationReferenceDataSource operation.


=head2 ReferenceSchema => L<Paws::KinesisAnalytics::SourceSchema>

  Describes the format of the data in the streaming source, and how each
data element maps to corresponding columns created in the
in-application stream.


=head2 B<REQUIRED> S3ReferenceDataSourceDescription => L<Paws::KinesisAnalytics::S3ReferenceDataSourceDescription>

  Provides the S3 bucket name, the object key name that contains the
reference data. It also provides the Amazon Resource Name (ARN) of the
IAM role that Amazon Kinesis Analytics can assume to read the Amazon S3
object and populate the in-application reference table.


=head2 B<REQUIRED> TableName => Str

  The in-application table name created by the specific reference data
source configuration.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

