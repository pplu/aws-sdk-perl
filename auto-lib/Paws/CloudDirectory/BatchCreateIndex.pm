package Paws::CloudDirectory::BatchCreateIndex;
  use Moose;
  has BatchReferenceName => (is => 'ro', isa => 'Str');
  has IsUnique => (is => 'ro', isa => 'Bool', required => 1);
  has LinkName => (is => 'ro', isa => 'Str');
  has OrderedIndexedAttributeList => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::AttributeKey]', required => 1);
  has ParentReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchCreateIndex

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchCreateIndex object:

  $service_obj->Method(Att1 => { BatchReferenceName => $value, ..., ParentReference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchCreateIndex object:

  $result = $service_obj->Method(...);
  $result->Att1->BatchReferenceName

=head1 DESCRIPTION

Creates an index object inside of a BatchRead operation. For more
information, see CreateIndex and BatchReadRequest$Operations.

=head1 ATTRIBUTES


=head2 BatchReferenceName => Str

  The batch reference name. See Transaction Support
(https://docs.aws.amazon.com/clouddirectory/latest/developerguide/transaction_support.html)
for more information.


=head2 B<REQUIRED> IsUnique => Bool

  Indicates whether the attribute that is being indexed has unique values
or not.


=head2 LinkName => Str

  The name of the link between the parent object and the index object.


=head2 B<REQUIRED> OrderedIndexedAttributeList => ArrayRef[L<Paws::CloudDirectory::AttributeKey>]

  Specifies the attributes that should be indexed on. Currently only a
single attribute is supported.


=head2 ParentReference => L<Paws::CloudDirectory::ObjectReference>

  A reference to the parent object that contains the index object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

