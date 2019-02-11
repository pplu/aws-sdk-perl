package Paws::ApiGatewayV2::DomainName;
  use Moose;
  has ApiMappingSelectionExpression => (is => 'ro', isa => 'Str', request_name => 'apiMappingSelectionExpression', traits => ['NameInRequest']);
  has DomainName => (is => 'ro', isa => 'Str', request_name => 'domainName', traits => ['NameInRequest'], required => 1);
  has DomainNameConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ApiGatewayV2::DomainNameConfiguration]', request_name => 'domainNameConfigurations', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::DomainName

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::DomainName object:

  $service_obj->Method(Att1 => { ApiMappingSelectionExpression => $value, ..., DomainNameConfigurations => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::DomainName object:

  $result = $service_obj->Method(...);
  $result->Att1->ApiMappingSelectionExpression

=head1 DESCRIPTION

Represents a domain name.

=head1 ATTRIBUTES


=head2 ApiMappingSelectionExpression => Str

  The API mapping selection expression.


=head2 B<REQUIRED> DomainName => Str

  The name of the DomainName resource.


=head2 DomainNameConfigurations => ArrayRef[L<Paws::ApiGatewayV2::DomainNameConfiguration>]

  The domain name configurations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

