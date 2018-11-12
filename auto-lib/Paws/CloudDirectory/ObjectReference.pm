package Paws::CloudDirectory::ObjectReference;
  use Moose;
  has Selector => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ObjectReference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::ObjectReference object:

  $service_obj->Method(Att1 => { Selector => $value, ..., Selector => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::ObjectReference object:

  $result = $service_obj->Method(...);
  $result->Att1->Selector

=head1 DESCRIPTION

The reference that identifies an object.

=head1 ATTRIBUTES


=head2 Selector => Str

  A path selector supports easy selection of an object by the
parent/child links leading to it from the directory root. Use the link
names from each parent/child link to construct the path. Path selectors
start with a slash (/) and link names are separated by slashes. For
more information about paths, see Access Objects
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/directory_objects_access_objects.html).
You can identify an object in one of the following ways:

=over

=item *

I<$ObjectIdentifier> - An object identifier is an opaque string
provided by Amazon Cloud Directory. When creating objects, the system
will provide you with the identifier of the created object. An
objectE<rsquo>s identifier is immutable and no two objects will ever
share the same object identifier

=item *

I</some/path> - Identifies the object based on path

=item *

I<#SomeBatchReference> - Identifies the object in a batch call

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

