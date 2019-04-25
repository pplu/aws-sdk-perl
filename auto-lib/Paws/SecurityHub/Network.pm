package Paws::SecurityHub::Network;
  use Moose;
  has DestinationDomain => (is => 'ro', isa => 'Str');
  has DestinationIpV4 => (is => 'ro', isa => 'Str');
  has DestinationIpV6 => (is => 'ro', isa => 'Str');
  has DestinationPort => (is => 'ro', isa => 'Int');
  has Direction => (is => 'ro', isa => 'Str');
  has Protocol => (is => 'ro', isa => 'Str');
  has SourceDomain => (is => 'ro', isa => 'Str');
  has SourceIpV4 => (is => 'ro', isa => 'Str');
  has SourceIpV6 => (is => 'ro', isa => 'Str');
  has SourceMac => (is => 'ro', isa => 'Str');
  has SourcePort => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::Network

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SecurityHub::Network object:

  $service_obj->Method(Att1 => { DestinationDomain => $value, ..., SourcePort => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SecurityHub::Network object:

  $result = $service_obj->Method(...);
  $result->Att1->DestinationDomain

=head1 DESCRIPTION

The details of network-related information about a finding.

=head1 ATTRIBUTES


=head2 DestinationDomain => Str

  The destination domain of network-related information about a finding.


=head2 DestinationIpV4 => Str

  The destination IPv4 address of network-related information about a
finding.


=head2 DestinationIpV6 => Str

  The destination IPv6 address of network-related information about a
finding.


=head2 DestinationPort => Int

  The destination port of network-related information about a finding.


=head2 Direction => Str

  Indicates the direction of network traffic associated with a finding.


=head2 Protocol => Str

  The protocol of network-related information about a finding.


=head2 SourceDomain => Str

  The source domain of network-related information about a finding.


=head2 SourceIpV4 => Str

  The source IPv4 address of network-related information about a finding.


=head2 SourceIpV6 => Str

  The source IPv6 address of network-related information about a finding.


=head2 SourceMac => Str

  The source media access control (MAC) address of network-related
information about a finding.


=head2 SourcePort => Int

  The source port of network-related information about a finding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

