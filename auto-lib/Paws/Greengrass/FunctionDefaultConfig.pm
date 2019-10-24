# Generated from default/object.tt
package Paws::Greengrass::FunctionDefaultConfig;
  use Moo;
  use Types::Standard qw//;
  use Paws::Greengrass::Types qw/Greengrass_FunctionDefaultExecutionConfig/;
  has Execution => (is => 'ro', isa => Greengrass_FunctionDefaultExecutionConfig);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Execution' => {
                                'class' => 'Paws::Greengrass::FunctionDefaultExecutionConfig',
                                'type' => 'Greengrass_FunctionDefaultExecutionConfig'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::FunctionDefaultConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::FunctionDefaultConfig object:

  $service_obj->Method(Att1 => { Execution => $value, ..., Execution => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::FunctionDefaultConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->Execution

=head1 DESCRIPTION

The default configuration that applies to all Lambda functions in the
group. Individual Lambda functions can override these settings.

=head1 ATTRIBUTES


=head2 Execution => Greengrass_FunctionDefaultExecutionConfig

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

