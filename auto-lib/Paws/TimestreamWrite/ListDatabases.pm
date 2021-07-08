
package Paws::TimestreamWrite::ListDatabases;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDatabases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamWrite::ListDatabasesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamWrite::ListDatabases - Arguments for method ListDatabases on L<Paws::TimestreamWrite>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDatabases on the
L<Amazon Timestream Write|Paws::TimestreamWrite> service. Use the attributes of this class
as arguments to method ListDatabases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDatabases.

=head1 SYNOPSIS

    my $ingest.timestream = Paws->service('TimestreamWrite');
    my $ListDatabasesResponse = $ingest . timestream->ListDatabases(
      MaxResults => 1,             # OPTIONAL
      NextToken  => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Databases = $ListDatabasesResponse->Databases;
    my $NextToken = $ListDatabasesResponse->NextToken;

    # Returns a L<Paws::TimestreamWrite::ListDatabasesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ingest.timestream/ListDatabases>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The total number of items to return in the output. If the total number
of items available is more than the value specified, a NextToken is
provided in the output. To resume pagination, provide the NextToken
value as argument of a subsequent API invocation.



=head2 NextToken => Str

The pagination token. To resume pagination, provide the NextToken value
as argument of a subsequent API invocation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDatabases in L<Paws::TimestreamWrite>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

