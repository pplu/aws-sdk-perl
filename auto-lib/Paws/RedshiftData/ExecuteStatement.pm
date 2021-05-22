
package Paws::RedshiftData::ExecuteStatement;
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has Database => (is => 'ro', isa => 'Str');
  has DbUser => (is => 'ro', isa => 'Str');
  has SecretArn => (is => 'ro', isa => 'Str');
  has Sql => (is => 'ro', isa => 'Str', required => 1);
  has StatementName => (is => 'ro', isa => 'Str');
  has WithEvent => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ExecuteStatement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftData::ExecuteStatementOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftData::ExecuteStatement - Arguments for method ExecuteStatement on L<Paws::RedshiftData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ExecuteStatement on the
L<Redshift Data API Service|Paws::RedshiftData> service. Use the attributes of this class
as arguments to method ExecuteStatement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ExecuteStatement.

=head1 SYNOPSIS

    my $redshift-data = Paws->service('RedshiftData');
    my $ExecuteStatementOutput = $redshift -data->ExecuteStatement(
      ClusterIdentifier => 'MyLocation',
      Sql               => 'MyStatementString',
      Database          => 'MyString',                 # OPTIONAL
      DbUser            => 'MyString',                 # OPTIONAL
      SecretArn         => 'MySecretArn',              # OPTIONAL
      StatementName     => 'MyStatementNameString',    # OPTIONAL
      WithEvent         => 1,                          # OPTIONAL
    );

    # Results:
    my $ClusterIdentifier = $ExecuteStatementOutput->ClusterIdentifier;
    my $CreatedAt         = $ExecuteStatementOutput->CreatedAt;
    my $Database          = $ExecuteStatementOutput->Database;
    my $DbUser            = $ExecuteStatementOutput->DbUser;
    my $Id                = $ExecuteStatementOutput->Id;
    my $SecretArn         = $ExecuteStatementOutput->SecretArn;

    # Returns a L<Paws::RedshiftData::ExecuteStatementOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-data/ExecuteStatement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterIdentifier => Str

The cluster identifier. This parameter is required when authenticating
using either AWS Secrets Manager or temporary credentials.



=head2 Database => Str

The name of the database. This parameter is required when
authenticating using temporary credentials.



=head2 DbUser => Str

The database user name. This parameter is required when authenticating
using temporary credentials.



=head2 SecretArn => Str

The name or ARN of the secret that enables access to the database. This
parameter is required when authenticating using AWS Secrets Manager.



=head2 B<REQUIRED> Sql => Str

The SQL statement text to run.



=head2 StatementName => Str

The name of the SQL statement. You can name the SQL statement when you
create it to identify the query.



=head2 WithEvent => Bool

A value that indicates whether to send an event to the Amazon
EventBridge event bus after the SQL statement runs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ExecuteStatement in L<Paws::RedshiftData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

