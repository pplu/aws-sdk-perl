package Paws::CloudHSMv2::Hsm;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has ClusterId => (is => 'ro', isa => 'Str');
  has EniId => (is => 'ro', isa => 'Str');
  has EniIp => (is => 'ro', isa => 'Str');
  has HsmId => (is => 'ro', isa => 'Str', required => 1);
  has State => (is => 'ro', isa => 'Str');
  has StateMessage => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::Hsm

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudHSMv2::Hsm object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., SubnetId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudHSMv2::Hsm object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

Contains information about a hardware security module (HSM) in an AWS
CloudHSM cluster.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The Availability Zone that contains the HSM.


=head2 ClusterId => Str

  The identifier (ID) of the cluster that contains the HSM.


=head2 EniId => Str

  The identifier (ID) of the HSM's elastic network interface (ENI).


=head2 EniIp => Str

  The IP address of the HSM's elastic network interface (ENI).


=head2 B<REQUIRED> HsmId => Str

  The HSM's identifier (ID).


=head2 State => Str

  The HSM's state.


=head2 StateMessage => Str

  A description of the HSM's state.


=head2 SubnetId => Str

  The subnet that contains the HSM's elastic network interface (ENI).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

