# Generated from default/object.tt
package Paws::Neptune::ValidDBInstanceModificationsMessage;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Neptune::Types qw/Neptune_ValidStorageOptions/;
  has Storage => (is => 'ro', isa => ArrayRef[Neptune_ValidStorageOptions]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Storage' => {
                              'class' => 'Paws::Neptune::ValidStorageOptions',
                              'type' => 'ArrayRef[Neptune_ValidStorageOptions]'
                            }
             },
  'NameInRequest' => {
                       'Storage' => 'ValidStorageOptions'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptune::ValidDBInstanceModificationsMessage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Neptune::ValidDBInstanceModificationsMessage object:

  $service_obj->Method(Att1 => { Storage => $value, ..., Storage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Neptune::ValidDBInstanceModificationsMessage object:

  $result = $service_obj->Method(...);
  $result->Att1->Storage

=head1 DESCRIPTION

Information about valid modifications that you can make to your DB
instance. Contains the result of a successful call to the
DescribeValidDBInstanceModifications action. You can use this
information when you call ModifyDBInstance.

=head1 ATTRIBUTES


=head2 Storage => ArrayRef[Neptune_ValidStorageOptions]

  Valid storage options for your DB instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Neptune>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

