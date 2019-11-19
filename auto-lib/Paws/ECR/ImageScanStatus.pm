# Generated from default/object.tt
package Paws::ECR::ImageScanStatus;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ECR::Types qw//;
  has Description => (is => 'ro', isa => Str);
  has Status => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Description' => 'description',
                       'Status' => 'status'
                     },
  'types' => {
               'Description' => {
                                  'type' => 'Str'
                                },
               'Status' => {
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

Paws::ECR::ImageScanStatus

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::ImageScanStatus object:

  $service_obj->Method(Att1 => { Description => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::ImageScanStatus object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

The current status of an image scan.

=head1 ATTRIBUTES


=head2 Description => Str

  The description of the image scan status.


=head2 Status => Str

  The current state of an image scan.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

