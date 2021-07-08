
package Paws::ServiceDiscovery::UpdateHttpNamespace;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Paws::ServiceDiscovery::HttpNamespaceChange', required => 1);
  has UpdaterRequestId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateHttpNamespace');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::UpdateHttpNamespaceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::UpdateHttpNamespace - Arguments for method UpdateHttpNamespace on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateHttpNamespace on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method UpdateHttpNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateHttpNamespace.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    my $UpdateHttpNamespaceResponse = $servicediscovery->UpdateHttpNamespace(
      Id        => 'MyResourceId',
      Namespace => {
        Description => 'MyResourceDescription',    # max: 1024

      },
      UpdaterRequestId => 'MyResourceId',          # OPTIONAL
    );

    # Results:
    my $OperationId = $UpdateHttpNamespaceResponse->OperationId;

    # Returns a L<Paws::ServiceDiscovery::UpdateHttpNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/UpdateHttpNamespace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the namespace that you want to update.



=head2 B<REQUIRED> Namespace => L<Paws::ServiceDiscovery::HttpNamespaceChange>

Updated properties for the the HTTP namespace.



=head2 UpdaterRequestId => Str

A unique string that identifies the request and that allows failed
C<UpdateHttpNamespace> requests to be retried without the risk of
running the operation twice. C<UpdaterRequestId> can be any unique
string (for example, a date/timestamp).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateHttpNamespace in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

