package Paws::AppStream::ComputeCapacity;
  use Moose;
  has DesiredInstances => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::ComputeCapacity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::AppStream::ComputeCapacity object:

  $service_obj->Method(Att1 => { DesiredInstances => $value, ..., DesiredInstances => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::AppStream::ComputeCapacity object:

  $result = $service_obj->Method(...);
  $result->Att1->DesiredInstances

=head1 DESCRIPTION

Describes the capacity for a fleet.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DesiredInstances => Int

  The desired number of streaming instances.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

