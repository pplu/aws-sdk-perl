# Generated from default/object.tt
package Paws::CloudDirectory::IndexAttachment;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_AttributeKeyAndValue/;
  has IndexedAttributes => (is => 'ro', isa => ArrayRef[CloudDirectory_AttributeKeyAndValue]);
  has ObjectIdentifier => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IndexedAttributes' => {
                                        'type' => 'ArrayRef[CloudDirectory_AttributeKeyAndValue]',
                                        'class' => 'Paws::CloudDirectory::AttributeKeyAndValue'
                                      },
               'ObjectIdentifier' => {
                                       'type' => 'Str'
                                     }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::IndexAttachment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::IndexAttachment object:

  $service_obj->Method(Att1 => { IndexedAttributes => $value, ..., ObjectIdentifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::IndexAttachment object:

  $result = $service_obj->Method(...);
  $result->Att1->IndexedAttributes

=head1 DESCRIPTION

Represents an index and an attached object.

=head1 ATTRIBUTES


=head2 IndexedAttributes => ArrayRef[CloudDirectory_AttributeKeyAndValue]

  The indexed attribute values.


=head2 ObjectIdentifier => Str

  In response to ListIndex, the C<ObjectIdentifier> of the object
attached to the index. In response to ListAttachedIndices, the
C<ObjectIdentifier> of the index attached to the object. This field
will always contain the C<ObjectIdentifier> of the object on the
opposite side of the attachment specified in the query.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

