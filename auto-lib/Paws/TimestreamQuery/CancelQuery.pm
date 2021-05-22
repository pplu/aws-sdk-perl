
package Paws::TimestreamQuery::CancelQuery;
  use Moose;
  has QueryId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelQuery');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamQuery::CancelQueryResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamQuery::CancelQuery - Arguments for method CancelQuery on L<Paws::TimestreamQuery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelQuery on the
L<Amazon Timestream Query|Paws::TimestreamQuery> service. Use the attributes of this class
as arguments to method CancelQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelQuery.

=head1 SYNOPSIS

    my $query.timestream = Paws->service('TimestreamQuery');
    my $CancelQueryResponse = $query . timestream->CancelQuery(
      QueryId => 'MyQueryId',

    );

    # Results:
    my $CancellationMessage = $CancelQueryResponse->CancellationMessage;

    # Returns a L<Paws::TimestreamQuery::CancelQueryResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/query.timestream/CancelQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryId => Str

The id of the query that needs to be cancelled. C<QueryID> is returned
as part of QueryResult.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelQuery in L<Paws::TimestreamQuery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

