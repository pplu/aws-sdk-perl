# Generated from default/object.tt
package Paws::ServiceCatalog::ProvisioningArtifactParameter;
  use Moo;
  use Types::Standard qw/Str Bool/;
  use Paws::ServiceCatalog::Types qw/ServiceCatalog_ParameterConstraints/;
  has DefaultValue => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has IsNoEcho => (is => 'ro', isa => Bool);
  has ParameterConstraints => (is => 'ro', isa => ServiceCatalog_ParameterConstraints);
  has ParameterKey => (is => 'ro', isa => Str);
  has ParameterType => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'IsNoEcho' => {
                               'type' => 'Bool'
                             },
               'ParameterKey' => {
                                   'type' => 'Str'
                                 },
               'ParameterConstraints' => {
                                           'class' => 'Paws::ServiceCatalog::ParameterConstraints',
                                           'type' => 'ServiceCatalog_ParameterConstraints'
                                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'DefaultValue' => {
                                   'type' => 'Str'
                                 },
               'ParameterType' => {
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

Paws::ServiceCatalog::ProvisioningArtifactParameter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ProvisioningArtifactParameter object:

  $service_obj->Method(Att1 => { DefaultValue => $value, ..., ParameterType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ProvisioningArtifactParameter object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultValue

=head1 DESCRIPTION

Information about a parameter used to provision a product.

=head1 ATTRIBUTES


=head2 DefaultValue => Str

  The default value.


=head2 Description => Str

  The description of the parameter.


=head2 IsNoEcho => Bool

  If this value is true, the value for this parameter is obfuscated from
view when the parameter is retrieved. This parameter is used to hide
sensitive information.


=head2 ParameterConstraints => ServiceCatalog_ParameterConstraints

  Constraints that the administrator has put on a parameter.


=head2 ParameterKey => Str

  The parameter key.


=head2 ParameterType => Str

  The parameter type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

