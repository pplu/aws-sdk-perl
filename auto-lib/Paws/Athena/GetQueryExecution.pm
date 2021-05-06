
package Paws::Athena::GetQueryExecution;
  use Moose;
  has QueryExecutionId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetQueryExecution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::GetQueryExecutionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::GetQueryExecution - Arguments for method GetQueryExecution on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetQueryExecution on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method GetQueryExecution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetQueryExecution.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $GetQueryExecutionOutput = $athena->GetQueryExecution(
      QueryExecutionId => 'MyQueryExecutionId',

    );

    # Results:
    my $QueryExecution = $GetQueryExecutionOutput->QueryExecution;

    # Returns a L<Paws::Athena::GetQueryExecutionOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/GetQueryExecution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> QueryExecutionId => Str

The unique ID of the query execution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetQueryExecution in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

