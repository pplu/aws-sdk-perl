package Paws::EC2::LaunchTemplateConfig;
  use Moo;  use Types::Standard qw/ArrayRef/;
  use Paws::EC2::Types qw/EC2_LaunchTemplateOverrides EC2_FleetLaunchTemplateSpecification/;
  has LaunchTemplateSpecification => (is => 'ro', isa => EC2_FleetLaunchTemplateSpecification);
  has Overrides => (is => 'ro', isa => ArrayRef[EC2_LaunchTemplateOverrides]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'LaunchTemplateSpecification' => 'launchTemplateSpecification',
                       'Overrides' => 'overrides'
                     },
  'types' => {
               'LaunchTemplateSpecification' => {
                                                  'class' => 'Paws::EC2::FleetLaunchTemplateSpecification',
                                                  'type' => 'EC2_FleetLaunchTemplateSpecification'
                                                },
               'Overrides' => {
                                'class' => 'Paws::EC2::LaunchTemplateOverrides',
                                'type' => 'ArrayRef[EC2_LaunchTemplateOverrides]'
                              }
             }
}
;
    return $Params_map;
  }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::LaunchTemplateConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::LaunchTemplateConfig object:

  $service_obj->Method(Att1 => { LaunchTemplateSpecification => $value, ..., Overrides => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::LaunchTemplateConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->LaunchTemplateSpecification

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 LaunchTemplateSpecification => EC2_FleetLaunchTemplateSpecification

  The launch template.


=head2 Overrides => ArrayRef[EC2_LaunchTemplateOverrides]

  Any parameters that you specify override the same parameters in the
launch template.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
