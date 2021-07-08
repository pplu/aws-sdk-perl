
package Paws::Route53Resolver::UpdateResolverDnssecConfig;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has Validation => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResolverDnssecConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::UpdateResolverDnssecConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::UpdateResolverDnssecConfig - Arguments for method UpdateResolverDnssecConfig on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResolverDnssecConfig on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method UpdateResolverDnssecConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResolverDnssecConfig.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $UpdateResolverDnssecConfigResponse =
      $route53resolver->UpdateResolverDnssecConfig(
      ResourceId => 'MyResourceId',
      Validation => 'ENABLE',

      );

    # Results:
    my $ResolverDNSSECConfig =
      $UpdateResolverDnssecConfigResponse->ResolverDNSSECConfig;

# Returns a L<Paws::Route53Resolver::UpdateResolverDnssecConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/UpdateResolverDnssecConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The ID of the virtual private cloud (VPC) that you're updating the
DNSSEC validation status for.



=head2 B<REQUIRED> Validation => Str

The new value that you are specifying for DNSSEC validation for the
VPC. The value can be C<ENABLE> or C<DISABLE>. Be aware that it can
take time for a validation status change to be completed.

Valid values are: C<"ENABLE">, C<"DISABLE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResolverDnssecConfig in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

