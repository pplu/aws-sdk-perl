# Generated from default/object.tt
package Paws::CloudDirectory::BatchUpdateObjectAttributes;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_ObjectAttributeUpdate CloudDirectory_ObjectReference/;
  has AttributeUpdates => (is => 'ro', isa => ArrayRef[CloudDirectory_ObjectAttributeUpdate], required => 1);
  has ObjectReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ObjectReference' => {
                                      'class' => 'Paws::CloudDirectory::ObjectReference',
                                      'type' => 'CloudDirectory_ObjectReference'
                                    },
               'AttributeUpdates' => {
                                       'type' => 'ArrayRef[CloudDirectory_ObjectAttributeUpdate]',
                                       'class' => 'Paws::CloudDirectory::ObjectAttributeUpdate'
                                     }
             },
  'IsRequired' => {
                    'ObjectReference' => 1,
                    'AttributeUpdates' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchUpdateObjectAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchUpdateObjectAttributes object:

  $service_obj->Method(Att1 => { AttributeUpdates => $value, ..., ObjectReference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchUpdateObjectAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeUpdates

=head1 DESCRIPTION

Represents the output of a C<BatchUpdate> operation.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeUpdates => ArrayRef[CloudDirectory_ObjectAttributeUpdate]

  Attributes update structure.


=head2 B<REQUIRED> ObjectReference => CloudDirectory_ObjectReference

  Reference that identifies the object.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

