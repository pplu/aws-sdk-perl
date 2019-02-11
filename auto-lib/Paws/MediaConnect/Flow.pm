package Paws::MediaConnect::Flow;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', request_name => 'availabilityZone', traits => ['NameInRequest'], required => 1);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has EgressIp => (is => 'ro', isa => 'Str', request_name => 'egressIp', traits => ['NameInRequest']);
  has Entitlements => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::Entitlement]', request_name => 'entitlements', traits => ['NameInRequest'], required => 1);
  has FlowArn => (is => 'ro', isa => 'Str', request_name => 'flowArn', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::Output]', request_name => 'outputs', traits => ['NameInRequest'], required => 1);
  has Source => (is => 'ro', isa => 'Paws::MediaConnect::Source', request_name => 'source', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::Flow

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConnect::Flow object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConnect::Flow object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

The settings for a flow, including its source, outputs, and
entitlements.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AvailabilityZone => Str

  The Availability Zone that you want to create the flow in. These
options are limited to the Availability Zones within the current AWS.


=head2 Description => Str

  A description of the flow. This value is not used or seen outside of
the current AWS Elemental MediaConnect account.


=head2 EgressIp => Str

  The IP address from which video will be sent to output destinations.


=head2 B<REQUIRED> Entitlements => ArrayRef[L<Paws::MediaConnect::Entitlement>]

  The entitlements in this flow.


=head2 B<REQUIRED> FlowArn => Str

  The Amazon Resource Name (ARN), a unique identifier for any AWS
resource, of the flow.


=head2 B<REQUIRED> Name => Str

  The name of the flow.


=head2 B<REQUIRED> Outputs => ArrayRef[L<Paws::MediaConnect::Output>]

  The outputs in this flow.


=head2 B<REQUIRED> Source => L<Paws::MediaConnect::Source>

  


=head2 B<REQUIRED> Status => Str

  The current status of the flow.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

