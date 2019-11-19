# Generated from default/object.tt
package Paws::Greengrass::ListDefinitionsResponse;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::Greengrass::Types qw/Greengrass_DefinitionInformation/;
  has Definitions => (is => 'ro', isa => ArrayRef[Greengrass_DefinitionInformation]);
  has NextToken => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Definitions' => {
                                  'class' => 'Paws::Greengrass::DefinitionInformation',
                                  'type' => 'ArrayRef[Greengrass_DefinitionInformation]'
                                }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ListDefinitionsResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::ListDefinitionsResponse object:

  $service_obj->Method(Att1 => { Definitions => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::ListDefinitionsResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Definitions

=head1 DESCRIPTION

A list of definitions.

=head1 ATTRIBUTES


=head2 Definitions => ArrayRef[Greengrass_DefinitionInformation]

  Information about a definition.


=head2 NextToken => Str

  The token for the next set of results, or ''null'' if there are no
additional results.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

