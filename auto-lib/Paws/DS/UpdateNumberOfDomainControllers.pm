
package Paws::DS::UpdateNumberOfDomainControllers;
  use Moose;
  has DesiredNumber => (is => 'ro', isa => 'Int', required => 1);
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNumberOfDomainControllers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::UpdateNumberOfDomainControllersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::UpdateNumberOfDomainControllers - Arguments for method UpdateNumberOfDomainControllers on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNumberOfDomainControllers on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method UpdateNumberOfDomainControllers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNumberOfDomainControllers.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $UpdateNumberOfDomainControllersResult =
      $ds->UpdateNumberOfDomainControllers(
      DesiredNumber => 1,
      DirectoryId   => 'MyDirectoryId',

      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/UpdateNumberOfDomainControllers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DesiredNumber => Int

The number of domain controllers desired in the directory.



=head2 B<REQUIRED> DirectoryId => Str

Identifier of the directory to which the domain controllers will be
added or removed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNumberOfDomainControllers in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

