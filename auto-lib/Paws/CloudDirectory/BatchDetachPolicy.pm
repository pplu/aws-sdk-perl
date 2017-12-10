package Paws::CloudDirectory::BatchDetachPolicy;
  use Moose;
  has ObjectReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
  has PolicyReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchDetachPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchDetachPolicy object:

  $service_obj->Method(Att1 => { ObjectReference => $value, ..., PolicyReference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchDetachPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->ObjectReference

=head1 DESCRIPTION

Detaches the specified policy from the specified directory inside a
BatchWrite operation. For more information, see DetachPolicy and
BatchWriteRequest$Operations.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ObjectReference => L<Paws::CloudDirectory::ObjectReference>

  Reference that identifies the object whose policy object will be
detached.


=head2 B<REQUIRED> PolicyReference => L<Paws::CloudDirectory::ObjectReference>

  Reference that identifies the policy object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

