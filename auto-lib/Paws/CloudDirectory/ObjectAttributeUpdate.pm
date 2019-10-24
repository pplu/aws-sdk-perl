# Generated from default/object.tt
package Paws::CloudDirectory::ObjectAttributeUpdate;
  use Moo;
  use Types::Standard qw//;
  use Paws::CloudDirectory::Types qw/CloudDirectory_AttributeKey CloudDirectory_ObjectAttributeAction/;
  has ObjectAttributeAction => (is => 'ro', isa => CloudDirectory_ObjectAttributeAction);
  has ObjectAttributeKey => (is => 'ro', isa => CloudDirectory_AttributeKey);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'ObjectAttributeAction' => {
                                            'class' => 'Paws::CloudDirectory::ObjectAttributeAction',
                                            'type' => 'CloudDirectory_ObjectAttributeAction'
                                          },
               'ObjectAttributeKey' => {
                                         'class' => 'Paws::CloudDirectory::AttributeKey',
                                         'type' => 'CloudDirectory_AttributeKey'
                                       }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ObjectAttributeUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::ObjectAttributeUpdate object:

  $service_obj->Method(Att1 => { ObjectAttributeAction => $value, ..., ObjectAttributeKey => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::ObjectAttributeUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->ObjectAttributeAction

=head1 DESCRIPTION

Structure that contains attribute update information.

=head1 ATTRIBUTES


=head2 ObjectAttributeAction => CloudDirectory_ObjectAttributeAction

  The action to perform as part of the attribute update.


=head2 ObjectAttributeKey => CloudDirectory_AttributeKey

  The key of the attribute being updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

