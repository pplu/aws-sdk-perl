package Paws::EC2::AnalysisSecurityGroupRule;
  use Moose;
  has Cidr => (is => 'ro', isa => 'Str', request_name => 'cidr', traits => ['NameInRequest']);
  has Direction => (is => 'ro', isa => 'Str', request_name => 'direction', traits => ['NameInRequest']);
  has PortRange => (is => 'ro', isa => 'Paws::EC2::PortRange', request_name => 'portRange', traits => ['NameInRequest']);
  has PrefixListId => (is => 'ro', isa => 'Str', request_name => 'prefixListId', traits => ['NameInRequest']);
  has Protocol => (is => 'ro', isa => 'Str', request_name => 'protocol', traits => ['NameInRequest']);
  has SecurityGroupId => (is => 'ro', isa => 'Str', request_name => 'securityGroupId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AnalysisSecurityGroupRule

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::AnalysisSecurityGroupRule object:

  $service_obj->Method(Att1 => { Cidr => $value, ..., SecurityGroupId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::AnalysisSecurityGroupRule object:

  $result = $service_obj->Method(...);
  $result->Att1->Cidr

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Cidr => Str

The IPv4 address range, in CIDR notation.


=head2 Direction => Str

The direction. The following are possible values:

=over

=item *

egress

=item *

ingress

=back



=head2 PortRange => L<Paws::EC2::PortRange>

The port range.


=head2 PrefixListId => Str

The prefix list ID.


=head2 Protocol => Str

The protocol name.


=head2 SecurityGroupId => Str

The security group ID.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
