
package Paws::Route53Resolver::UpdateResolverEndpoint;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has ResolverEndpointId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResolverEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::UpdateResolverEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UpdateResolverEndpoint - Arguments for method UpdateResolverEndpoint on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResolverEndpoint on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method UpdateResolverEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResolverEndpoint.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $UpdateResolverEndpointResponse =
      $route53resolver->UpdateResolverEndpoint(
      ResolverEndpointId => 'MyResourceId',
      Name               => 'MyName',         # OPTIONAL
      );

    # Results:
    my $ResolverEndpoint = $UpdateResolverEndpointResponse->ResolverEndpoint;

    # Returns a L<Paws::Route53Resolver::UpdateResolverEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/UpdateResolverEndpoint>

=head1 ATTRIBUTES


=head2 Name => Str

The name of the resolver endpoint that you want to update.



=head2 B<REQUIRED> ResolverEndpointId => Str

The ID of the resolver endpoint that you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResolverEndpoint in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

