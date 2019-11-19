# Generated from default/object.tt
package Paws::CloudDirectory::TypedLinkAttributeDefinition;
  use Moo;
  use Types::Standard qw/Bool Str/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_TypedAttributeValue CloudDirectory_RuleMap/;
  has DefaultValue => (is => 'ro', isa => CloudDirectory_TypedAttributeValue);
  has IsImmutable => (is => 'ro', isa => Bool);
  has Name => (is => 'ro', isa => Str, required => 1);
  has RequiredBehavior => (is => 'ro', isa => Str, required => 1);
  has Rules => (is => 'ro', isa => CloudDirectory_RuleMap);
  has Type => (is => 'ro', isa => Str, required => 1);

    sub params_map {
    our $Params_map ||= {
  'IsRequired' => {
                    'Type' => 1,
                    'Name' => 1,
                    'RequiredBehavior' => 1
                  },
  'types' => {
               'IsImmutable' => {
                                  'type' => 'Bool'
                                },
               'Rules' => {
                            'type' => 'CloudDirectory_RuleMap',
                            'class' => 'Paws::CloudDirectory::RuleMap'
                          },
               'DefaultValue' => {
                                   'class' => 'Paws::CloudDirectory::TypedAttributeValue',
                                   'type' => 'CloudDirectory_TypedAttributeValue'
                                 },
               'Type' => {
                           'type' => 'Str'
                         },
               'RequiredBehavior' => {
                                       'type' => 'Str'
                                     },
               'Name' => {
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

Paws::CloudDirectory::TypedLinkAttributeDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::TypedLinkAttributeDefinition object:

  $service_obj->Method(Att1 => { DefaultValue => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::TypedLinkAttributeDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->DefaultValue

=head1 DESCRIPTION

A typed link attribute definition.

=head1 ATTRIBUTES


=head2 DefaultValue => CloudDirectory_TypedAttributeValue

  The default value of the attribute (if configured).


=head2 IsImmutable => Bool

  Whether the attribute is mutable or not.


=head2 B<REQUIRED> Name => Str

  The unique name of the typed link attribute.


=head2 B<REQUIRED> RequiredBehavior => Str

  The required behavior of the C<TypedLinkAttributeDefinition>.


=head2 Rules => CloudDirectory_RuleMap

  Validation rules that are attached to the attribute definition.


=head2 B<REQUIRED> Type => Str

  The type of the attribute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

