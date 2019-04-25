
package Paws::Athena::StartQueryExecution;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has QueryExecutionContext => (is => 'ro', isa => 'Paws::Athena::QueryExecutionContext');
  has QueryString => (is => 'ro', isa => 'Str', required => 1);
  has ResultConfiguration => (is => 'ro', isa => 'Paws::Athena::ResultConfiguration', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartQueryExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::StartQueryExecutionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::StartQueryExecution - Arguments for method StartQueryExecution on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartQueryExecution on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method StartQueryExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartQueryExecution.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $StartQueryExecutionOutput = $athena->StartQueryExecution(
      QueryString         => 'MyQueryString',
      ResultConfiguration => {
        OutputLocation          => 'MyString',
        EncryptionConfiguration => {
          EncryptionOption => 'SSE_S3',     # values: SSE_S3, SSE_KMS, CSE_KMS
          KmsKey           => 'MyString',
        },    # OPTIONAL
      },
      ClientRequestToken    => 'MyIdempotencyToken',    # OPTIONAL
      QueryExecutionContext => {
        Database => 'MyDatabaseString',    # min: 1, max: 32; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $QueryExecutionId = $StartQueryExecutionOutput->QueryExecutionId;

    # Returns a L<Paws::Athena::StartQueryExecutionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/StartQueryExecution>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique case-sensitive string used to ensure the request to create the
query is idempotent (executes only once). If another
C<StartQueryExecution> request is received, the same response is
returned and another query is not created. If a parameter has changed,
for example, the C<QueryString>, an error is returned.

This token is listed as not required because AWS SDKs (for example the
AWS SDK for Java) auto-generate the token for users. If you are not
using the AWS SDK or the AWS CLI, you must provide this token or the
action will fail.



=head2 QueryExecutionContext => L<Paws::Athena::QueryExecutionContext>

The database within which the query executes.



=head2 B<REQUIRED> QueryString => Str

The SQL query statements to be executed.



=head2 B<REQUIRED> ResultConfiguration => L<Paws::Athena::ResultConfiguration>

Specifies information about where and how to save the results of the
query execution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartQueryExecution in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

