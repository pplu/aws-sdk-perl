# Generated from default/object.tt
package Paws::CloudDirectory::BatchAttachToIndex;
  use Moo;
  use Types::Standard qw//;
  use Paws::CloudDirectory::Types qw/CloudDirectory_ObjectReference/;
  has IndexReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1);
  has TargetReference => (is => 'ro', isa => CloudDirectory_ObjectReference, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'TargetReference' => 1,
                    'IndexReference' => 1
                  },
  'types' => {
               'TargetReference' => {
                                      'type' => 'CloudDirectory_ObjectReference',
                                      'class' => 'Paws::CloudDirectory::ObjectReference'
                                    },
               'IndexReference' => {
                                     'class' => 'Paws::CloudDirectory::ObjectReference',
                                     'type' => 'CloudDirectory_ObjectReference'
                                   }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchAttachToIndex

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchAttachToIndex object:

  $service_obj->Method(Att1 => { IndexReference => $value, ..., TargetReference => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchAttachToIndex object:

  $result = $service_obj->Method(...);
  $result->Att1->IndexReference

=head1 DESCRIPTION

Attaches the specified object to the specified index inside a BatchRead
operation. For more information, see AttachToIndex and
BatchReadRequest$Operations.

=head1 ATTRIBUTES


=head2 B<REQUIRED> IndexReference => CloudDirectory_ObjectReference

  A reference to the index that you are attaching the object to.


=head2 B<REQUIRED> TargetReference => CloudDirectory_ObjectReference

  A reference to the object that you are attaching to the index.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

