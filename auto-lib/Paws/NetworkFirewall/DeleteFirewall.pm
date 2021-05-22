
package Paws::NetworkFirewall::DeleteFirewall;
  use Moose;
  has FirewallArn => (is => 'ro', isa => 'Str');
  has FirewallName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteFirewall');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkFirewall::DeleteFirewallResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkFirewall::DeleteFirewall - Arguments for method DeleteFirewall on L<Paws::NetworkFirewall>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteFirewall on the
L<AWS Network Firewall|Paws::NetworkFirewall> service. Use the attributes of this class
as arguments to method DeleteFirewall.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteFirewall.

=head1 SYNOPSIS

    my $network-firewall = Paws->service('NetworkFirewall');
    my $DeleteFirewallResponse = $network -firewall->DeleteFirewall(
      FirewallArn  => 'MyResourceArn',     # OPTIONAL
      FirewallName => 'MyResourceName',    # OPTIONAL
    );

    # Results:
    my $Firewall       = $DeleteFirewallResponse->Firewall;
    my $FirewallStatus = $DeleteFirewallResponse->FirewallStatus;

    # Returns a L<Paws::NetworkFirewall::DeleteFirewallResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/network-firewall/DeleteFirewall>

=head1 ATTRIBUTES


=head2 FirewallArn => Str

The Amazon Resource Name (ARN) of the firewall.

You must specify the ARN or the name, and you can specify both.



=head2 FirewallName => Str

The descriptive name of the firewall. You can't change the name of a
firewall after you create it.

You must specify the ARN or the name, and you can specify both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteFirewall in L<Paws::NetworkFirewall>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

