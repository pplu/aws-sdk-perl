
package Paws::Athena::UpdatePreparedStatement;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has QueryStatement => (is => 'ro', isa => 'Str', required => 1);
  has StatementName => (is => 'ro', isa => 'Str', required => 1);
  has WorkGroup => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePreparedStatement');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::UpdatePreparedStatementOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::UpdatePreparedStatement - Arguments for method UpdatePreparedStatement on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePreparedStatement on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method UpdatePreparedStatement.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePreparedStatement.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $UpdatePreparedStatementOutput = $athena->UpdatePreparedStatement(
      QueryStatement => 'MyQueryString',
      StatementName  => 'MyStatementName',
      WorkGroup      => 'MyWorkGroupName',
      Description    => 'MyDescriptionString',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/UpdatePreparedStatement>

=head1 ATTRIBUTES


=head2 Description => Str

The description of the prepared statement.



=head2 B<REQUIRED> QueryStatement => Str

The query string for the prepared statement.



=head2 B<REQUIRED> StatementName => Str

The name of the prepared statement.



=head2 B<REQUIRED> WorkGroup => Str

The workgroup for the prepared statement.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePreparedStatement in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

