
package Paws::WorkSpaces::ModifyAccount;
  use Moose;
  has DedicatedTenancyManagementCidrRange => (is => 'ro', isa => 'Str');
  has DedicatedTenancySupport => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyAccount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkSpaces::ModifyAccountResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::ModifyAccount - Arguments for method ModifyAccount on L<Paws::WorkSpaces>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyAccount on the
L<Amazon WorkSpaces|Paws::WorkSpaces> service. Use the attributes of this class
as arguments to method ModifyAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyAccount.

=head1 SYNOPSIS

    my $workspaces = Paws->service('WorkSpaces');
    my $ModifyAccountResult = $workspaces->ModifyAccount(
      DedicatedTenancyManagementCidrRange =>
        'MyDedicatedTenancyManagementCidrRange',    # OPTIONAL
      DedicatedTenancySupport => 'ENABLED',         # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workspaces/ModifyAccount>

=head1 ATTRIBUTES


=head2 DedicatedTenancyManagementCidrRange => Str

The IP address range, specified as an IPv4 CIDR block, for the
management network interface. Specify an IP address range that is
compatible with your network and in CIDR notation (that is, specify the
range as an IPv4 CIDR block). The CIDR block size must be /16 (for
example, 203.0.113.25/16). It must also be specified as available by
the C<ListAvailableManagementCidrRanges> operation.



=head2 DedicatedTenancySupport => Str

The status of BYOL.

Valid values are: C<"ENABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyAccount in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

