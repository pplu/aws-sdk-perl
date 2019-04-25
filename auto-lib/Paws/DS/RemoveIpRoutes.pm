
package Paws::DS::RemoveIpRoutes;
  use Moose;
  has CidrIps => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveIpRoutes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::RemoveIpRoutesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::RemoveIpRoutes - Arguments for method RemoveIpRoutes on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveIpRoutes on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method RemoveIpRoutes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveIpRoutes.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $RemoveIpRoutesResult = $ds->RemoveIpRoutes(
      CidrIps     => [ 'MyCidrIp', ... ],
      DirectoryId => 'MyDirectoryId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/RemoveIpRoutes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CidrIps => ArrayRef[Str|Undef]

IP address blocks that you want to remove.



=head2 B<REQUIRED> DirectoryId => Str

Identifier (ID) of the directory from which you want to remove the IP
addresses.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveIpRoutes in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

