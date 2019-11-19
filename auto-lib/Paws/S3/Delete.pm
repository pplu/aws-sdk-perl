# Generated from default/object.tt
package Paws::S3::Delete;
  use Moo;
  use Types::Standard qw/ArrayRef Bool/;
  use Paws::S3::Types qw/S3_ObjectIdentifier/;
  has Objects => (is => 'ro', isa => ArrayRef[S3_ObjectIdentifier], required => 1);
  has Quiet => (is => 'ro', isa => Bool);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Quiet' => {
                            'type' => 'Bool'
                          },
               'Objects' => {
                              'class' => 'Paws::S3::ObjectIdentifier',
                              'type' => 'ArrayRef[S3_ObjectIdentifier]'
                            }
             },
  'NameInRequest' => {
                       'Objects' => 'Object'
                     },
  'IsRequired' => {
                    'Objects' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::Delete

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::Delete object:

  $service_obj->Method(Att1 => { Objects => $value, ..., Quiet => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::Delete object:

  $result = $service_obj->Method(...);
  $result->Att1->Objects

=head1 DESCRIPTION

Container for the objects to delete.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Objects => ArrayRef[S3_ObjectIdentifier]

  The objects to delete.


=head2 Quiet => Bool

  Element to enable quiet mode for the request. When you add this
element, you must set its value to true.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

