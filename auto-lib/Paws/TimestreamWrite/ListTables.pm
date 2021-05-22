
package Paws::TimestreamWrite::ListTables;
  use Moose;
  has DatabaseName => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTables');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamWrite::ListTablesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::ListTables - Arguments for method ListTables on L<Paws::TimestreamWrite>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTables on the
L<Amazon Timestream Write|Paws::TimestreamWrite> service. Use the attributes of this class
as arguments to method ListTables.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTables.

=head1 SYNOPSIS

    my $ingest.timestream = Paws->service('TimestreamWrite');
    my $ListTablesResponse = $ingest . timestream->ListTables(
      DatabaseName => 'MyResourceName',    # OPTIONAL
      MaxResults   => 1,                   # OPTIONAL
      NextToken    => 'MyString',          # OPTIONAL
    );

    # Results:
    my $NextToken = $ListTablesResponse->NextToken;
    my $Tables    = $ListTablesResponse->Tables;

    # Returns a L<Paws::TimestreamWrite::ListTablesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ingest.timestream/ListTables>

=head1 ATTRIBUTES


=head2 DatabaseName => Str

The name of the Timestream database.



=head2 MaxResults => Int

The total number of items to return in the output. If the total number
of items available is more than the value specified, a NextToken is
provided in the output. To resume pagination, provide the NextToken
value as argument of a subsequent API invocation.



=head2 NextToken => Str

The pagination token. To resume pagination, provide the NextToken value
as argument of a subsequent API invocation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTables in L<Paws::TimestreamWrite>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

