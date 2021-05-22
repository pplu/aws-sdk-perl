
package Paws::Route53Resolver::GetFirewallConfig;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetFirewallConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Resolver::GetFirewallConfigResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::GetFirewallConfig - Arguments for method GetFirewallConfig on L<Paws::Route53Resolver>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetFirewallConfig on the
L<Amazon Route 53 Resolver|Paws::Route53Resolver> service. Use the attributes of this class
as arguments to method GetFirewallConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetFirewallConfig.

=head1 SYNOPSIS

    my $route53resolver = Paws->service('Route53Resolver');
    my $GetFirewallConfigResponse = $route53resolver->GetFirewallConfig(
      ResourceId => 'MyResourceId',

    );

    # Results:
    my $FirewallConfig = $GetFirewallConfigResponse->FirewallConfig;

    # Returns a L<Paws::Route53Resolver::GetFirewallConfigResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53resolver/GetFirewallConfig>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The ID of the Amazon virtual private cloud (VPC) that the configuration
is for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetFirewallConfig in L<Paws::Route53Resolver>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

