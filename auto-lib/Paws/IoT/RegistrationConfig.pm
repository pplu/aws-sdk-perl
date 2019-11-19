# Generated from default/object.tt
package Paws::IoT::RegistrationConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::IoT::Types qw//;
  has RoleArn => (is => 'ro', isa => Str);
  has TemplateBody => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'TemplateBody' => {
                                   'type' => 'Str'
                                 },
               'RoleArn' => {
                              'type' => 'Str'
                            }
             },
  'NameInRequest' => {
                       'RoleArn' => 'roleArn',
                       'TemplateBody' => 'templateBody'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RegistrationConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoT::RegistrationConfig object:

  $service_obj->Method(Att1 => { RoleArn => $value, ..., TemplateBody => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoT::RegistrationConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->RoleArn

=head1 DESCRIPTION

The registration configuration.

=head1 ATTRIBUTES


=head2 RoleArn => Str

  The ARN of the role.


=head2 TemplateBody => Str

  The template body.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

