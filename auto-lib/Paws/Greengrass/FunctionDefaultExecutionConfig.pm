# Generated from default/object.tt
package Paws::Greengrass::FunctionDefaultExecutionConfig;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::Greengrass::Types qw/Greengrass_FunctionRunAsConfig/;
  has IsolationMode => (is => 'ro', isa => Str);
  has RunAs => (is => 'ro', isa => Greengrass_FunctionRunAsConfig);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'RunAs' => {
                            'type' => 'Greengrass_FunctionRunAsConfig',
                            'class' => 'Paws::Greengrass::FunctionRunAsConfig'
                          },
               'IsolationMode' => {
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

Paws::Greengrass::FunctionDefaultExecutionConfig

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::FunctionDefaultExecutionConfig object:

  $service_obj->Method(Att1 => { IsolationMode => $value, ..., RunAs => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::FunctionDefaultExecutionConfig object:

  $result = $service_obj->Method(...);
  $result->Att1->IsolationMode

=head1 DESCRIPTION

Configuration information that specifies how a Lambda function runs.

=head1 ATTRIBUTES


=head2 IsolationMode => Str

  


=head2 RunAs => Greengrass_FunctionRunAsConfig

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

