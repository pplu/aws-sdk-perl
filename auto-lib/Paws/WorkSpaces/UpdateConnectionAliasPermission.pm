
package Paws::WorkSpaces::UpdateConnectionAliasPermission;
  use Moose;
  has AliasId => (is => 'ro', isa => 'Str', required => 1);
  has ConnectionAliasPermission => (is => 'ro', isa => 'Paws::WorkSpaces::ConnectionAliasPermission', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConnectionAliasPermission');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::UpdateConnectionAliasPermissionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::UpdateConnectionAliasPermission - Arguments for method UpdateConnectionAliasPermission on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConnectionAliasPermission on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method UpdateConnectionAliasPermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConnectionAliasPermission.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $UpdateConnectionAliasPermissionResult =
      $workspaces->UpdateConnectionAliasPermission(
      AliasId                   => 'MyConnectionAliasId',
      ConnectionAliasPermission => {
        AllowAssociation => 1,
        SharedAccountId  => 'MyAwsAccount',

      },

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/UpdateConnectionAliasPermission>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AliasId => Str

The identifier of the connection alias that you want to update
permissions for.



=head2 B<REQUIRED> ConnectionAliasPermission => L<Paws::WorkSpaces::ConnectionAliasPermission>

Indicates whether to share or unshare the connection alias with the
specified AWS account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConnectionAliasPermission in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

