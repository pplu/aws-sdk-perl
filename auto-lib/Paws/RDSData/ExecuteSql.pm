
package Paws::RDSData::ExecuteSql;
  use Moose;
  has AwsSecretStoreArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsSecretStoreArn', required => 1);
  has Database => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'database');
  has DbClusterOrInstanceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbClusterOrInstanceArn', required => 1);
  has Schema => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'schema');
  has SqlStatements => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sqlStatements', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteSql');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ExecuteSql');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDSData::ExecuteSqlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDSData::ExecuteSql - Arguments for method ExecuteSql on L<Paws::RDSData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteSql on the
L<AWS RDS DataService|Paws::RDSData> service. Use the attributes of this class
as arguments to method ExecuteSql.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteSql.

=head1 SYNOPSIS

    my $rds-data = Paws->service('RDSData');
    my $ExecuteSqlResponse = $rds -data->ExecuteSql(
      AwsSecretStoreArn      => 'MyArn',
      DbClusterOrInstanceArn => 'MyArn',
      SqlStatements          => 'MySqlStatement',
      Database               => 'MyDbName',         # OPTIONAL
      Schema                 => 'MyDbName',         # OPTIONAL
    );

    # Results:
    my $SqlStatementResults = $ExecuteSqlResponse->SqlStatementResults;

    # Returns a L<Paws::RDSData::ExecuteSqlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds-data/ExecuteSql>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsSecretStoreArn => Str

ARN of the db credentials in AWS Secret Store or the friendly secret
name



=head2 Database => Str

Target DB name



=head2 B<REQUIRED> DbClusterOrInstanceArn => Str

ARN of the target db cluster or instance



=head2 Schema => Str

Target Schema name



=head2 B<REQUIRED> SqlStatements => Str

SQL statement(s) to be executed. Statements can be chained by using
semicolons




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteSql in L<Paws::RDSData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

