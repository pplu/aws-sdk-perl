# Generated from default/object.tt
package Paws::S3Control::S3AccessControlPolicy;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::S3Control::Types qw/S3Control_S3AccessControlList/;
  has AccessControlList => (is => 'ro', isa => S3Control_S3AccessControlList);
  has CannedAccessControlList => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'AccessControlList' => {
                                        'type' => 'S3Control_S3AccessControlList',
                                        'class' => 'Paws::S3Control::S3AccessControlList'
                                      },
               'CannedAccessControlList' => {
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

Paws::S3Control::S3AccessControlPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::S3AccessControlPolicy object:

  $service_obj->Method(Att1 => { AccessControlList => $value, ..., CannedAccessControlList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::S3AccessControlPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->AccessControlList

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AccessControlList => S3Control_S3AccessControlList

  


=head2 CannedAccessControlList => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

