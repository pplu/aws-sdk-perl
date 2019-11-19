# Generated from default/object.tt
package Paws::ApiGatewayV2::UpdateDomainNameInput;
  use Moo;
  use Types::Standard qw/ArrayRef/;
  use Paws::ApiGatewayV2::Types qw/ApiGatewayV2_DomainNameConfiguration/;
  has DomainNameConfigurations => (is => 'ro', isa => ArrayRef[ApiGatewayV2_DomainNameConfiguration]);

    sub params_map {
    our $Params_map ||= {
  'NameInRequest' => {
                       'DomainNameConfigurations' => 'domainNameConfigurations'
                     },
  'types' => {
               'DomainNameConfigurations' => {
                                               'type' => 'ArrayRef[ApiGatewayV2_DomainNameConfiguration]',
                                               'class' => 'Paws::ApiGatewayV2::DomainNameConfiguration'
                                             }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateDomainNameInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::UpdateDomainNameInput object:

  $service_obj->Method(Att1 => { DomainNameConfigurations => $value, ..., DomainNameConfigurations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::UpdateDomainNameInput object:

  $result = $service_obj->Method(...);
  $result->Att1->DomainNameConfigurations

=head1 DESCRIPTION

Represents the input parameters for an UpdateDomainName request.

=head1 ATTRIBUTES


=head2 DomainNameConfigurations => ArrayRef[ApiGatewayV2_DomainNameConfiguration]

  The domain name configurations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

