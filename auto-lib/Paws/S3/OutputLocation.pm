# Generated from default/object.tt
package Paws::S3::OutputLocation;
  use Moo;
  use Types::Standard qw//;
  use Paws::S3::Types qw/S3_S3Location/;
  has S3 => (is => 'ro', isa => S3_S3Location);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'S3' => {
                         'type' => 'S3_S3Location',
                         'class' => 'Paws::S3::S3Location'
                       }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::OutputLocation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::OutputLocation object:

  $service_obj->Method(Att1 => { S3 => $value, ..., S3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::OutputLocation object:

  $result = $service_obj->Method(...);
  $result->Att1->S3

=head1 DESCRIPTION

Describes the location where the restore job's output is stored.

=head1 ATTRIBUTES


=head2 S3 => S3_S3Location

  Describes an S3 location that will receive the results of the restore
request.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

