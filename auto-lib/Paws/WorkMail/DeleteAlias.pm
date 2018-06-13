
package Paws::WorkMail::DeleteAlias;
  use Moose;
  has Alias => (is => 'ro', isa => 'Str', required => 1);
  has EntityId => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAlias');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DeleteAliasResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DeleteAlias - Arguments for method DeleteAlias on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAlias on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DeleteAlias.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAlias.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DeleteAliasResponse = $workmail->DeleteAlias(
      Alias          => 'MyEmailAddress',
      EntityId       => 'MyWorkMailIdentifier',
      OrganizationId => 'MyOrganizationId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DeleteAlias>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Alias => Str

The aliases to be removed from the user's set of aliases. Duplicate
entries in the list are collapsed into single entries (the list is
transformed into a set).



=head2 B<REQUIRED> EntityId => Str

The identifier for the Amazon WorkMail entity to have the aliases
removed.



=head2 B<REQUIRED> OrganizationId => Str

The identifier for the organization under which the user exists.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAlias in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

