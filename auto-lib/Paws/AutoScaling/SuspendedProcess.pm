package Paws::AutoScaling::SuspendedProcess;
  use Moose;
  has ProcessName => (is => 'ro', isa => 'Str');
  has SuspensionReason => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::SuspendedProcess

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AutoScaling::SuspendedProcess object:

  $service_obj->Method(Att1 => { ProcessName => $value, ..., SuspensionReason => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AutoScaling::SuspendedProcess object:

  $result = $service_obj->Method(...);
  $result->Att1->ProcessName

=head1 DESCRIPTION

Describes an automatic scaling process that has been suspended. For
more information, see ProcessType.

=head1 ATTRIBUTES


=head2 ProcessName => Str

  The name of the suspended process.


=head2 SuspensionReason => Str

  The reason that the process was suspended.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

