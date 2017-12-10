package Paws::CloudDirectory::BatchGetObjectInformation;
  use Moose;
  has ObjectReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchGetObjectInformation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchGetObjectInformation object:

  $service_obj->Method(Att1 => { ObjectReference => $value, ..., ObjectReference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchGetObjectInformation object:

  $result = $service_obj->Method(...);
  $result->Att1->ObjectReference

=head1 DESCRIPTION

Retrieves metadata about an object inside a BatchRead operation. For
more information, see GetObjectInformation and
BatchReadRequest$Operations.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ObjectReference => L<Paws::CloudDirectory::ObjectReference>

  A reference to the object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

