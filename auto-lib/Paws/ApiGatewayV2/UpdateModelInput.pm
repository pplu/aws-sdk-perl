# Generated from default/object.tt
package Paws::ApiGatewayV2::UpdateModelInput;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::ApiGatewayV2::Types qw//;
  has ContentType => (is => 'ro', isa => Str);
  has Description => (is => 'ro', isa => Str);
  has Name => (is => 'ro', isa => Str);
  has Schema => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ContentType' => {
                                  'type' => 'Str'
                                },
               'Name' => {
                           'type' => 'Str'
                         },
               'Description' => {
                                  'type' => 'Str'
                                },
               'Schema' => {
                             'type' => 'Str'
                           }
             },
  'NameInRequest' => {
                       'ContentType' => 'contentType',
                       'Name' => 'name',
                       'Description' => 'description',
                       'Schema' => 'schema'
                     }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGatewayV2::UpdateModelInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGatewayV2::UpdateModelInput object:

  $service_obj->Method(Att1 => { ContentType => $value, ..., Schema => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGatewayV2::UpdateModelInput object:

  $result = $service_obj->Method(...);
  $result->Att1->ContentType

=head1 DESCRIPTION

Represents the input parameters for an UpdateModel request.

=head1 ATTRIBUTES


=head2 ContentType => Str

  The content-type for the model, for example, "application/json".


=head2 Description => Str

  The description of the model.


=head2 Name => Str

  The name of the model.


=head2 Schema => Str

  The schema for the model. For application/json models, this should be
JSON schema draft 4 model.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGatewayV2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

