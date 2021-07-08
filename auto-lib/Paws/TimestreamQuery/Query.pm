
package Paws::TimestreamQuery::Query;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has MaxRows => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has QueryString => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Query');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamQuery::QueryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::Query - Arguments for method Query on L<Paws::TimestreamQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method Query on the
L<Amazon Timestream Query|Paws::TimestreamQuery> service. Use the attributes of this class
as arguments to method Query.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Query.

=head1 SYNOPSIS

    my $query.timestream = Paws->service('TimestreamQuery');
    my $QueryResponse = $query . timestream->Query(
      QueryString => 'MyQueryString',
      ClientToken => 'MyClientRequestToken',    # OPTIONAL
      MaxRows     => 1,                         # OPTIONAL
      NextToken   => 'MyString',                # OPTIONAL
    );

    # Results:
    my $ColumnInfo  = $QueryResponse->ColumnInfo;
    my $NextToken   = $QueryResponse->NextToken;
    my $QueryId     = $QueryResponse->QueryId;
    my $QueryStatus = $QueryResponse->QueryStatus;
    my $Rows        = $QueryResponse->Rows;

    # Returns a L<Paws::TimestreamQuery::QueryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/query.timestream/Query>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive string of up to 64 ASCII characters that you
specify when you make a Query request. Providing a C<ClientToken> makes
the call to C<Query> idempotent, meaning that multiple identical calls
have the same effect as one single call.

Your query request will fail in the following cases:

=over

=item *

If you submit a request with the same client token outside the 5-minute
idepotency window.

=item *

If you submit a request with the same client token but a change in
other parameters within the 5-minute idempotency window.

=back

After 4 hours, any request with the same client token is treated as a
new request.



=head2 MaxRows => Int

The total number of rows to return in the output. If the total number
of rows available is more than the value specified, a NextToken is
provided in the command's output. To resume pagination, provide the
NextToken value in the starting-token argument of a subsequent command.



=head2 NextToken => Str

A pagination token passed to get a set of results.



=head2 B<REQUIRED> QueryString => Str

The query to be executed by Timestream.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Query in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

