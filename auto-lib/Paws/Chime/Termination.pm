package Paws::Chime::Termination;
  use Moose;
  has CallingRegions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CidrAllowedList => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CpsLimit => (is => 'ro', isa => 'Int');
  has DefaultPhoneNumber => (is => 'ro', isa => 'Str');
  has Disabled => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime::Termination

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Chime::Termination object:

  $service_obj->Method(Att1 => { CallingRegions => $value, ..., Disabled => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Chime::Termination object:

  $result = $service_obj->Method(...);
  $result->Att1->CallingRegions

=head1 DESCRIPTION

Termination settings enable your SIP hosts to make outbound calls using
your Amazon Chime Voice Connector.

=head1 ATTRIBUTES


=head2 CallingRegions => ArrayRef[Str|Undef]

  The countries to which calls are allowed.


=head2 CidrAllowedList => ArrayRef[Str|Undef]

  The IP addresses allowed to make calls, in CIDR format.


=head2 CpsLimit => Int

  The limit on calls per second. Max value based on account service
limit. Default value of 1.


=head2 DefaultPhoneNumber => Str

  The default caller ID phone number.


=head2 Disabled => Bool

  When termination settings are disabled, outbound calls can not be made.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Chime>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

