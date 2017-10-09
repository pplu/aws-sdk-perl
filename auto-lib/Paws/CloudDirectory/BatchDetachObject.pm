package Paws::CloudDirectory::BatchDetachObject;
  use Moose;
  has BatchReferenceName => (is => 'ro', isa => 'Str', required => 1);
  has LinkName => (is => 'ro', isa => 'Str', required => 1);
  has ParentReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchDetachObject

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchDetachObject object:

  $service_obj->Method(Att1 => { BatchReferenceName => $value, ..., ParentReference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchDetachObject object:

  $result = $service_obj->Method(...);
  $result->Att1->BatchReferenceName

=head1 DESCRIPTION

Represents the output of a DetachObject operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BatchReferenceName => Str

  The batch reference name. See Batches for more information.


=head2 B<REQUIRED> LinkName => Str

  The name of the link.


=head2 B<REQUIRED> ParentReference => L<Paws::CloudDirectory::ObjectReference>

  Parent reference from which the object with the specified link name is
detached.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

