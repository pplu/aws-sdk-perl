
package Paws::Athena::DeletePreparedStatement;
  use Moose;
  has StatementName => (is => 'ro', isa => 'Str', required => 1);
  has WorkGroup => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePreparedStatement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::DeletePreparedStatementOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::DeletePreparedStatement - Arguments for method DeletePreparedStatement on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePreparedStatement on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method DeletePreparedStatement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePreparedStatement.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $DeletePreparedStatementOutput = $athena->DeletePreparedStatement(
      StatementName => 'MyStatementName',
      WorkGroup     => 'MyWorkGroupName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/DeletePreparedStatement>

=head1 ATTRIBUTES


=head2 B<REQUIRED> StatementName => Str

The name of the prepared statement to delete.



=head2 B<REQUIRED> WorkGroup => Str

The workgroup to which the statement to be deleted belongs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePreparedStatement in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

