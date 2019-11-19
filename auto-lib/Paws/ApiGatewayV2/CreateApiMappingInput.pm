# Generated from default/object.tt
package Paws::ApiGatewayV2::CreateApiMappingInput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw//;
  has ApiId => (is => 'ro', isa => Str, required => 1);
  has ApiMappingKey => (is => 'ro', isa => Str);
  has Stage => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'ApiId' => 1,
                    'Stage' => 1
                  },
  'NameInRequest' => {
                       'ApiId' => 'apiId',
                       'ApiMappingKey' => 'apiMappingKey',
                       'Stage' => 'stage'
                     },
  'types' => {
               'ApiMappingKey' => {
                                    'type' => 'Str'
                                  },
               'Stage' => {
                            'type' => 'Str'
                          },
               'ApiId' => {
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

Paws::ApiGatewayV2::CreateApiMappingInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::CreateApiMappingInput object:

  $service_obj->Method(Att1 => { ApiId => $value, ..., Stage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::CreateApiMappingInput object:

  $result = $service_obj->Method(...);
  $result->Att1->ApiId

=head1 DESCRIPTION

Represents the input parameters for a CreateApiMapping request.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApiId => Str

  The API identifier.


=head2 ApiMappingKey => Str

  


=head2 B<REQUIRED> Stage => Str

  The API stage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

