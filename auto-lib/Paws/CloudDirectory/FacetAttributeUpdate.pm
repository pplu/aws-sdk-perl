# Generated from default/object.tt
package Paws::CloudDirectory::FacetAttributeUpdate;
  use Moo;
  use Types::Standard qw/Str/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_FacetAttribute/;
  has Action => (is => 'ro', isa => Str);
  has Attribute => (is => 'ro', isa => CloudDirectory_FacetAttribute);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Action' => {
                             'type' => 'Str'
                           },
               'Attribute' => {
                                'class' => 'Paws::CloudDirectory::FacetAttribute',
                                'type' => 'CloudDirectory_FacetAttribute'
                              }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::FacetAttributeUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::FacetAttributeUpdate object:

  $service_obj->Method(Att1 => { Action => $value, ..., Attribute => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::FacetAttributeUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Action

=head1 DESCRIPTION

A structure that contains information used to update an attribute.

=head1 ATTRIBUTES


=head2 Action => Str

  The action to perform when updating the attribute.


=head2 Attribute => CloudDirectory_FacetAttribute

  The attribute to update.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

