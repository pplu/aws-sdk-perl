package Paws::ELB::ListenerDescription;
  use Moose;
  has Listener => (is => 'ro', isa => 'Paws::ELB::Listener');
  has PolicyNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::ListenerDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELB::ListenerDescription object:

  $service_obj->Method(Att1 => { Listener => $value, ..., PolicyNames => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELB::ListenerDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->Listener

=head1 DESCRIPTION

The policies enabled for a listener.

=head1 ATTRIBUTES


=head2 Listener => L<Paws::ELB::Listener>

  The listener.


=head2 PolicyNames => ArrayRef[Str|Undef]

  The policies. If there are no policies enabled, the list is empty.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

