# Generated from callargs_class.tt

package Paws::RDS::CreateCustomAvailabilityZone;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::RDS::Types qw//;
  has CustomAvailabilityZoneName => (is => 'ro', isa => Str, required => 1, predicate => 1);
  has ExistingVpnId => (is => 'ro', isa => Str, predicate => 1);
  has NewVpnTunnelName => (is => 'ro', isa => Str, predicate => 1);
  has VpnTunnelOriginatorIP => (is => 'ro', isa => Str, predicate => 1);

  use MooX::ClassAttribute;

  class_has _api_call => (isa => Str, is => 'ro', default => 'CreateCustomAvailabilityZone');
  class_has _returns => (isa => Str, is => 'ro', default => 'Paws::RDS::CreateCustomAvailabilityZoneResult');
  class_has _result_key => (isa => Str, is => 'ro', default => 'CreateCustomAvailabilityZoneResult');

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'CustomAvailabilityZoneName' => 1
                  },
  'types' => {
               'ExistingVpnId' => {
                                    'type' => 'Str'
                                  },
               'VpnTunnelOriginatorIP' => {
                                            'type' => 'Str'
                                          },
               'CustomAvailabilityZoneName' => {
                                                 'type' => 'Str'
                                               },
               'NewVpnTunnelName' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::CreateCustomAvailabilityZone - Arguments for method CreateCustomAvailabilityZone on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCustomAvailabilityZone on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method CreateCustomAvailabilityZone.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCustomAvailabilityZone.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $CreateCustomAvailabilityZoneResult = $rds->CreateCustomAvailabilityZone(
      CustomAvailabilityZoneName => 'MyString',
      ExistingVpnId              => 'MyString',    # OPTIONAL
      NewVpnTunnelName           => 'MyString',    # OPTIONAL
      VpnTunnelOriginatorIP      => 'MyString',    # OPTIONAL
    );

    # Results:
    my $CustomAvailabilityZone =
      $CreateCustomAvailabilityZoneResult->CustomAvailabilityZone;

    # Returns a L<Paws::RDS::CreateCustomAvailabilityZoneResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/CreateCustomAvailabilityZone>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CustomAvailabilityZoneName => Str

The name of the custom Availability Zone (AZ).



=head2 ExistingVpnId => Str

The ID of an existing virtual private network (VPN) between the Amazon
RDS website and the VMware vSphere cluster.



=head2 NewVpnTunnelName => Str

The name of a new VPN tunnel between the Amazon RDS website and the
VMware vSphere cluster.

Specify this parameter only if C<ExistingVpnId> isn't specified.



=head2 VpnTunnelOriginatorIP => Str

The IP address of network traffic from your on-premises data center. A
custom AZ receives the network traffic.

Specify this parameter only if C<ExistingVpnId> isn't specified.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCustomAvailabilityZone in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

