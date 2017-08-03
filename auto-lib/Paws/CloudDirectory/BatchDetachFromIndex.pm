package Paws::CloudDirectory::BatchDetachFromIndex;
  use Moose;
  has IndexReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
  has TargetReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchDetachFromIndex

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchDetachFromIndex object:

  $service_obj->Method(Att1 => { IndexReference => $value, ..., TargetReference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchDetachFromIndex object:

  $result = $service_obj->Method(...);
  $result->Att1->IndexReference

=head1 DESCRIPTION

Detaches the specified object from the specified index inside a
BatchRead operation. For more information, see DetachFromIndex and
BatchReadRequest$Operations.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexReference => L<Paws::CloudDirectory::ObjectReference>

  A reference to the index object.


=head2 B<REQUIRED> TargetReference => L<Paws::CloudDirectory::ObjectReference>

  A reference to the object being detached from the index.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

