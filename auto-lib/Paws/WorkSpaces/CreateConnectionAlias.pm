
package Paws::WorkSpaces::CreateConnectionAlias;
  use Moose;
  has ConnectionString => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnectionAlias');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::CreateConnectionAliasResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::CreateConnectionAlias - Arguments for method CreateConnectionAlias on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnectionAlias on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method CreateConnectionAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnectionAlias.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $CreateConnectionAliasResult = $workspaces->CreateConnectionAlias(
      ConnectionString => 'MyConnectionString',
      Tags             => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 127
          Value => 'MyTagValue',    # max: 255; OPTIONAL
        },
        ...
      ],                            # OPTIONAL
    );

    # Results:
    my $AliasId = $CreateConnectionAliasResult->AliasId;

    # Returns a L<Paws::WorkSpaces::CreateConnectionAliasResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/CreateConnectionAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConnectionString => Str

A connection string in the form of a fully qualified domain name
(FQDN), such as C<www.example.com>.

After you create a connection string, it is always associated to your
AWS account. You cannot recreate the same connection string with a
different account, even if you delete all instances of it from the
original account. The connection string is globally reserved for your
account.



=head2 Tags => ArrayRef[L<Paws::WorkSpaces::Tag>]

The tags to associate with the connection alias.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnectionAlias in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

