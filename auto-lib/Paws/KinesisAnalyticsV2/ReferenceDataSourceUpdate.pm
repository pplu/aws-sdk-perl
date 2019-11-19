# Generated from default/object.tt
package Paws::KinesisAnalyticsV2::ReferenceDataSourceUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::KinesisAnalyticsV2::Types qw/KinesisAnalyticsV2_SourceSchema KinesisAnalyticsV2_S3ReferenceDataSourceUpdate/;
  has ReferenceId => (is => 'ro', isa => Str, required => 1);
  has ReferenceSchemaUpdate => (is => 'ro', isa => KinesisAnalyticsV2_SourceSchema);
  has S3ReferenceDataSourceUpdate => (is => 'ro', isa => KinesisAnalyticsV2_S3ReferenceDataSourceUpdate);
  has TableNameUpdate => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TableNameUpdate' => {
                                      'type' => 'Str'
                                    },
               'ReferenceSchemaUpdate' => {
                                            'class' => 'Paws::KinesisAnalyticsV2::SourceSchema',
                                            'type' => 'KinesisAnalyticsV2_SourceSchema'
                                          },
               'ReferenceId' => {
                                  'type' => 'Str'
                                },
               'S3ReferenceDataSourceUpdate' => {
                                                  'class' => 'Paws::KinesisAnalyticsV2::S3ReferenceDataSourceUpdate',
                                                  'type' => 'KinesisAnalyticsV2_S3ReferenceDataSourceUpdate'
                                                }
             },
  'IsRequired' => {
                    'ReferenceId' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalyticsV2::ReferenceDataSourceUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalyticsV2::ReferenceDataSourceUpdate object:

  $service_obj->Method(Att1 => { ReferenceId => $value, ..., TableNameUpdate => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalyticsV2::ReferenceDataSourceUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->ReferenceId

=head1 DESCRIPTION

When you update a reference data source configuration for a SQL-based
Amazon Kinesis Data Analytics application, this object provides all the
updated values (such as the source bucket name and object key name),
the in-application table name that is created, and updated mapping
information that maps the data in the Amazon S3 object to the
in-application reference table that is created.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReferenceId => Str

  The ID of the reference data source that is being updated. You can use
the DescribeApplication operation to get this value.


=head2 ReferenceSchemaUpdate => KinesisAnalyticsV2_SourceSchema

  Describes the format of the data in the streaming source, and how each
data element maps to corresponding columns created in the
in-application stream.


=head2 S3ReferenceDataSourceUpdate => KinesisAnalyticsV2_S3ReferenceDataSourceUpdate

  Describes the S3 bucket name, object key name, and IAM role that
Kinesis Data Analytics can assume to read the Amazon S3 object on your
behalf and populate the in-application reference table.


=head2 TableNameUpdate => Str

  The in-application table name that is created by this update.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalyticsV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

