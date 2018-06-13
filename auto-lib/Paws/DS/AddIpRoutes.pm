
package Paws::DS::AddIpRoutes;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has IpRoutes => (is => 'ro', isa => 'ArrayRef[Paws::DS::IpRoute]', required => 1);
  has UpdateSecurityGroupForDirectoryControllers => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddIpRoutes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::AddIpRoutesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::AddIpRoutes - Arguments for method AddIpRoutes on L<Paws::DS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddIpRoutes on the
L<AWS Directory Service|Paws::DS> service. Use the attributes of this class
as arguments to method AddIpRoutes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddIpRoutes.

=head1 SYNOPSIS

    my $ds = Paws->service('DS');
    my $AddIpRoutesResult = $ds->AddIpRoutes(
      DirectoryId => 'MyDirectoryId',
      IpRoutes    => [
        {
          CidrIp      => 'MyCidrIp',         # OPTIONAL
          Description => 'MyDescription',    # max: 128; OPTIONAL
        },
        ...
      ],
      UpdateSecurityGroupForDirectoryControllers => 1,    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds/AddIpRoutes>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

Identifier (ID) of the directory to which to add the address block.



=head2 B<REQUIRED> IpRoutes => ArrayRef[L<Paws::DS::IpRoute>]

IP address blocks, using CIDR format, of the traffic to route. This is
often the IP address block of the DNS server used for your on-premises
domain.



=head2 UpdateSecurityGroupForDirectoryControllers => Bool

If set to true, updates the inbound and outbound rules of the security
group that has the description: "AWS created security group for
I<directory ID> directory controllers." Following are the new rules:

Inbound:

=over

=item *

Type: Custom UDP Rule, Protocol: UDP, Range: 88, Source: 0.0.0.0/0

=item *

Type: Custom UDP Rule, Protocol: UDP, Range: 123, Source: 0.0.0.0/0

=item *

Type: Custom UDP Rule, Protocol: UDP, Range: 138, Source: 0.0.0.0/0

=item *

Type: Custom UDP Rule, Protocol: UDP, Range: 389, Source: 0.0.0.0/0

=item *

Type: Custom UDP Rule, Protocol: UDP, Range: 464, Source: 0.0.0.0/0

=item *

Type: Custom UDP Rule, Protocol: UDP, Range: 445, Source: 0.0.0.0/0

=item *

Type: Custom TCP Rule, Protocol: TCP, Range: 88, Source: 0.0.0.0/0

=item *

Type: Custom TCP Rule, Protocol: TCP, Range: 135, Source: 0.0.0.0/0

=item *

Type: Custom TCP Rule, Protocol: TCP, Range: 445, Source: 0.0.0.0/0

=item *

Type: Custom TCP Rule, Protocol: TCP, Range: 464, Source: 0.0.0.0/0

=item *

Type: Custom TCP Rule, Protocol: TCP, Range: 636, Source: 0.0.0.0/0

=item *

Type: Custom TCP Rule, Protocol: TCP, Range: 1024-65535, Source:
0.0.0.0/0

=item *

Type: Custom TCP Rule, Protocol: TCP, Range: 3268-33269, Source:
0.0.0.0/0

=item *

Type: DNS (UDP), Protocol: UDP, Range: 53, Source: 0.0.0.0/0

=item *

Type: DNS (TCP), Protocol: TCP, Range: 53, Source: 0.0.0.0/0

=item *

Type: LDAP, Protocol: TCP, Range: 389, Source: 0.0.0.0/0

=item *

Type: All ICMP, Protocol: All, Range: N/A, Source: 0.0.0.0/0

=back

Outbound:

=over

=item *

Type: All traffic, Protocol: All, Range: All, Destination: 0.0.0.0/0

=back

These security rules impact an internal network interface that is not
exposed publicly.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddIpRoutes in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

