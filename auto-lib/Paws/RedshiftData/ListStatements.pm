
package Paws::RedshiftData::ListStatements;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RoleLevel => (is => 'ro', isa => 'Bool');
  has StatementName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStatements');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftData::ListStatementsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftData::ListStatements - Arguments for method ListStatements on L<Paws::RedshiftData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStatements on the
L<Redshift Data API Service|Paws::RedshiftData> service. Use the attributes of this class
as arguments to method ListStatements.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStatements.

=head1 SYNOPSIS

    my $redshift-data = Paws->service('RedshiftData');
    my $ListStatementsResponse = $redshift -data->ListStatements(
      MaxResults    => 1,                          # OPTIONAL
      NextToken     => 'MyString',                 # OPTIONAL
      RoleLevel     => 1,                          # OPTIONAL
      StatementName => 'MyStatementNameString',    # OPTIONAL
      Status        => 'SUBMITTED',                # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListStatementsResponse->NextToken;
    my $Statements = $ListStatementsResponse->Statements;

    # Returns a L<Paws::RedshiftData::ListStatementsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-data/ListStatements>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of SQL statements to return in the response. If more
SQL statements exist than fit in one response, then C<NextToken> is
returned to page through the results.



=head2 NextToken => Str

A value that indicates the starting point for the next set of response
records in a subsequent request. If a value is returned in a response,
you can retrieve the next set of records by providing this returned
NextToken value in the next NextToken parameter and retrying the
command. If the NextToken field is empty, all response records have
been retrieved for the request.



=head2 RoleLevel => Bool

A value that filters which statements to return in the response. If
true, all statements run by the caller's IAM role are returned. If
false, only statements run by the caller's IAM role in the current IAM
session are returned. The default is true.



=head2 StatementName => Str

The name of the SQL statement specified as input to C<ExecuteStatement>
to identify the query. You can list multiple statements by providing a
prefix that matches the beginning of the statement name. For example,
to list myStatement1, myStatement2, myStatement3, and so on, then
provide the a value of C<myStatement>. Data API does a case-sensitive
match of SQL statement names to the prefix value you provide.



=head2 Status => Str

The status of the SQL statement to list. Status values are defined as
follows:

=over

=item *

ABORTED - The query run was stopped by the user.

=item *

ALL - A status value that includes all query statuses. This value can
be used to filter results.

=item *

FAILED - The query run failed.

=item *

FINISHED - The query has finished running.

=item *

PICKED - The query has been chosen to be run.

=item *

STARTED - The query run has started.

=item *

SUBMITTED - The query was submitted, but not yet processed.

=back


Valid values are: C<"SUBMITTED">, C<"PICKED">, C<"STARTED">, C<"FINISHED">, C<"ABORTED">, C<"FAILED">, C<"ALL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStatements in L<Paws::RedshiftData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

