package Paws::MachineLearning::RedshiftMetadata;
  use Moose;
  has DatabaseUserName => (is => 'ro', isa => 'Str');
  has RedshiftDatabase => (is => 'ro', isa => 'Paws::MachineLearning::RedshiftDatabase');
  has SelectSqlQuery => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MachineLearning::RedshiftMetadata

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MachineLearning::RedshiftMetadata object:

  $service_obj->Method(Att1 => { DatabaseUserName => $value, ..., SelectSqlQuery => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MachineLearning::RedshiftMetadata object:

  $result = $service_obj->Method(...);
  $result->Att1->DatabaseUserName

=head1 DESCRIPTION

Describes the C<DataSource> details specific to Amazon Redshift.

=head1 ATTRIBUTES


=head2 DatabaseUserName => Str

  


=head2 RedshiftDatabase => L<Paws::MachineLearning::RedshiftDatabase>

  


=head2 SelectSqlQuery => Str

  The SQL query that is specified during CreateDataSourceFromRedshift.
Returns only if C<Verbose> is true in GetDataSourceInput.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MachineLearning>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

