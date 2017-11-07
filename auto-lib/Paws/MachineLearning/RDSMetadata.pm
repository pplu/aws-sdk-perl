package Paws::MachineLearning::RDSMetadata;
  use Moose;
  has Database => (is => 'ro', isa => 'Paws::MachineLearning::RDSDatabase');
  has DatabaseUserName => (is => 'ro', isa => 'Str');
  has DataPipelineId => (is => 'ro', isa => 'Str');
  has ResourceRole => (is => 'ro', isa => 'Str');
  has SelectSqlQuery => (is => 'ro', isa => 'Str');
  has ServiceRole => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::RDSMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MachineLearning::RDSMetadata object:

  $service_obj->Method(Att1 => { Database => $value, ..., ServiceRole => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MachineLearning::RDSMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->Database

=head1 DESCRIPTION

The datasource details that are specific to Amazon RDS.

=head1 ATTRIBUTES


=head2 Database => L<Paws::MachineLearning::RDSDatabase>

  The database details required to connect to an Amazon RDS.


=head2 DatabaseUserName => Str

  


=head2 DataPipelineId => Str

  The ID of the Data Pipeline instance that is used to carry to copy data
from Amazon RDS to Amazon S3. You can use the ID to find details about
the instance in the Data Pipeline console.


=head2 ResourceRole => Str

  The role (DataPipelineDefaultResourceRole) assumed by an Amazon EC2
instance to carry out the copy task from Amazon RDS to Amazon S3. For
more information, see Role templates
(http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html)
for data pipelines.


=head2 SelectSqlQuery => Str

  The SQL query that is supplied during CreateDataSourceFromRDS. Returns
only if C<Verbose> is true in C<GetDataSourceInput>.


=head2 ServiceRole => Str

  The role (DataPipelineDefaultRole) assumed by the Data Pipeline service
to monitor the progress of the copy task from Amazon RDS to Amazon S3.
For more information, see Role templates
(http://docs.aws.amazon.com/datapipeline/latest/DeveloperGuide/dp-iam-roles.html)
for data pipelines.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

