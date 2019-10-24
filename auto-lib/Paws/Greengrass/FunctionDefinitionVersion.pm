# Generated from default/object.tt
package Paws::Greengrass::FunctionDefinitionVersion;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::Greengrass::Types qw/Greengrass_FunctionDefaultConfig Greengrass_Function/;
  has DefaultConfig => (is => 'ro', isa => Greengrass_FunctionDefaultConfig);
  has Functions => (is => 'ro', isa => ArrayRef[Greengrass_Function]);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Functions' => {
                                'class' => 'Paws::Greengrass::Function',
                                'type' => 'ArrayRef[Greengrass_Function]'
                              },
               'DefaultConfig' => {
                                    'class' => 'Paws::Greengrass::FunctionDefaultConfig',
                                    'type' => 'Greengrass_FunctionDefaultConfig'
                                  }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::FunctionDefinitionVersion

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::FunctionDefinitionVersion object:

  $service_obj->Method(Att1 => { DefaultConfig => $value, ..., Functions => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::FunctionDefinitionVersion object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultConfig

=head1 DESCRIPTION

Information about a function definition version.

=head1 ATTRIBUTES


=head2 DefaultConfig => Greengrass_FunctionDefaultConfig

  The default configuration that applies to all Lambda functions in this
function definition version. Individual Lambda functions can override
these settings.


=head2 Functions => ArrayRef[Greengrass_Function]

  A list of Lambda functions in this function definition version.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

