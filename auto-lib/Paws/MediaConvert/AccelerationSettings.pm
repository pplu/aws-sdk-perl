# Generated from default/object.tt
package Paws::MediaConvert::AccelerationSettings;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::MediaConvert::Types qw//;
  has Mode => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'Mode' => 'mode'
                     },
  'IsRequired' => {
                    'Mode' => 1
                  },
  'types' => {
               'Mode' => {
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

Paws::MediaConvert::AccelerationSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::AccelerationSettings object:

  $service_obj->Method(Att1 => { Mode => $value, ..., Mode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::AccelerationSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->Mode

=head1 DESCRIPTION

Accelerated transcoding can significantly speed up jobs with long,
visually complex content. Outputs that use this feature incur pro-tier
pricing. For information about feature limitations, see the AWS
Elemental MediaConvert User Guide.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Mode => Str

  Specify the conditions when the service will run your job with
accelerated transcoding.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

