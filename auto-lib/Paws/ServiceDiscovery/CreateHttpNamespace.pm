
package Paws::ServiceDiscovery::CreateHttpNamespace;
  use Moose;
  has CreatorRequestId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHttpNamespace');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::CreateHttpNamespaceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::CreateHttpNamespace - Arguments for method CreateHttpNamespace on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHttpNamespace on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method CreateHttpNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHttpNamespace.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    my $CreateHttpNamespaceResponse = $servicediscovery->CreateHttpNamespace(
      Name             => 'MyNamespaceName',
      CreatorRequestId => 'MyResourceId',             # OPTIONAL
      Description      => 'MyResourceDescription',    # OPTIONAL
    );

    # Results:
    my $OperationId = $CreateHttpNamespaceResponse->OperationId;

    # Returns a L<Paws::ServiceDiscovery::CreateHttpNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/CreateHttpNamespace>

=head1 ATTRIBUTES


=head2 CreatorRequestId => Str

A unique string that identifies the request and that allows failed
C<CreateHttpNamespace> requests to be retried without the risk of
executing the operation twice. C<CreatorRequestId> can be any unique
string, for example, a date/time stamp.



=head2 Description => Str

A description for the namespace.



=head2 B<REQUIRED> Name => Str

The name that you want to assign to this namespace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHttpNamespace in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

