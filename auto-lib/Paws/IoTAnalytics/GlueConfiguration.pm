package Paws::IoTAnalytics::GlueConfiguration;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str', request_name => 'databaseName', traits => ['NameInRequest'], required => 1);
  has TableName => (is => 'ro', isa => 'Str', request_name => 'tableName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::GlueConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::GlueConfiguration object:

  $service_obj->Method(Att1 => { DatabaseName => $value, ..., TableName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::GlueConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->DatabaseName

=head1 DESCRIPTION

Configuration information for coordination with the AWS Glue ETL
(extract, transform and load) service.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatabaseName => Str

  The name of the database in your AWS Glue Data Catalog in which the
table is located. (An AWS Glue Data Catalog database contains Glue Data
tables.)


=head2 B<REQUIRED> TableName => Str

  The name of the table in your AWS Glue Data Catalog which is used to
perform the ETL (extract, transform and load) operations. (An AWS Glue
Data Catalog table contains partitioned data and descriptions of data
sources and targets.)



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

