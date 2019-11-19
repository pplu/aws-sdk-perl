# Generated from default/object.tt
package Paws::Config::RemediationParameterValue;
  use Moo;
  use Types::Standard qw//;
  use Paws::Config::Types qw/Config_ResourceValue Config_StaticValue/;
  has ResourceValue => (is => 'ro', isa => Config_ResourceValue);
  has StaticValue => (is => 'ro', isa => Config_StaticValue);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ResourceValue' => {
                                    'type' => 'Config_ResourceValue',
                                    'class' => 'Paws::Config::ResourceValue'
                                  },
               'StaticValue' => {
                                  'class' => 'Paws::Config::StaticValue',
                                  'type' => 'Config_StaticValue'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::RemediationParameterValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Config::RemediationParameterValue object:

  $service_obj->Method(Att1 => { ResourceValue => $value, ..., StaticValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Config::RemediationParameterValue object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceValue

=head1 DESCRIPTION

The value is either a dynamic (resource) value or a static value. You
must select either a dynamic value or a static value.

=head1 ATTRIBUTES


=head2 ResourceValue => Config_ResourceValue

  The value is dynamic and changes at run-time.


=head2 StaticValue => Config_StaticValue

  The value is static and does not change at run-time.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

