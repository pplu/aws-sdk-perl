
package Paws::ServiceDiscovery::UpdatePublicDnsNamespace;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Namespace => (is => 'ro', isa => 'Paws::ServiceDiscovery::PublicDnsNamespaceChange', required => 1);
  has UpdaterRequestId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePublicDnsNamespace');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceDiscovery::UpdatePublicDnsNamespaceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceDiscovery::UpdatePublicDnsNamespace - Arguments for method UpdatePublicDnsNamespace on L<Paws::ServiceDiscovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePublicDnsNamespace on the
L<AWS Cloud Map|Paws::ServiceDiscovery> service. Use the attributes of this class
as arguments to method UpdatePublicDnsNamespace.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePublicDnsNamespace.

=head1 SYNOPSIS

    my $servicediscovery = Paws->service('ServiceDiscovery');
    my $UpdatePublicDnsNamespaceResponse =
      $servicediscovery->UpdatePublicDnsNamespace(
      Id        => 'MyResourceId',
      Namespace => {
        Description => 'MyResourceDescription',    # max: 1024; OPTIONAL
        Properties  => {
          DnsProperties => {
            SOA => {
              TTL => 1,    # max: 2147483647

            },

          },

        },    # OPTIONAL
      },
      UpdaterRequestId => 'MyResourceId',    # OPTIONAL
      );

    # Results:
    my $OperationId = $UpdatePublicDnsNamespaceResponse->OperationId;

 # Returns a L<Paws::ServiceDiscovery::UpdatePublicDnsNamespaceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/servicediscovery/UpdatePublicDnsNamespace>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the namespace being updated.



=head2 B<REQUIRED> Namespace => L<Paws::ServiceDiscovery::PublicDnsNamespaceChange>

Updated properties for the public DNS namespace.



=head2 UpdaterRequestId => Str

A unique string that identifies the request and that allows failed
C<UpdatePublicDnsNamespace> requests to be retried without the risk of
running the operation twice. C<UpdaterRequestId> can be any unique
string (for example, a date/timestamp).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePublicDnsNamespace in L<Paws::ServiceDiscovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

