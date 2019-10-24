# Generated from default/object.tt
package Paws::S3Control::S3AccessControlList;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::S3Control::Types qw/S3Control_S3ObjectOwner S3Control_S3Grant/;
  has Grants => (is => 'ro', isa => ArrayRef[S3Control_S3Grant]);
  has Owner => (is => 'ro', isa => S3Control_S3ObjectOwner, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Owner' => {
                            'class' => 'Paws::S3Control::S3ObjectOwner',
                            'type' => 'S3Control_S3ObjectOwner'
                          },
               'Grants' => {
                             'class' => 'Paws::S3Control::S3Grant',
                             'type' => 'ArrayRef[S3Control_S3Grant]'
                           }
             },
  'IsRequired' => {
                    'Owner' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::S3AccessControlList

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3Control::S3AccessControlList object:

  $service_obj->Method(Att1 => { Grants => $value, ..., Owner => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3Control::S3AccessControlList object:

  $result = $service_obj->Method(...);
  $result->Att1->Grants

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 Grants => ArrayRef[S3Control_S3Grant]

  


=head2 B<REQUIRED> Owner => S3Control_S3ObjectOwner

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3Control>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

