# Generated from default/object.tt
package Paws::CloudDirectory::AttributeKeyAndValue;
  use Moo;
  use Types::Standard qw//;
  use Paws::CloudDirectory::Types qw/CloudDirectory_AttributeKey CloudDirectory_TypedAttributeValue/;
  has Key => (is => 'ro', isa => CloudDirectory_AttributeKey, required => 1);
  has Value => (is => 'ro', isa => CloudDirectory_TypedAttributeValue, required => 1);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'Value' => {
                            'class' => 'Paws::CloudDirectory::TypedAttributeValue',
                            'type' => 'CloudDirectory_TypedAttributeValue'
                          },
               'Key' => {
                          'class' => 'Paws::CloudDirectory::AttributeKey',
                          'type' => 'CloudDirectory_AttributeKey'
                        }
             },
  'IsRequired' => {
                    'Value' => 1,
                    'Key' => 1
                  }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::AttributeKeyAndValue

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::AttributeKeyAndValue object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::AttributeKeyAndValue object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

The combination of an attribute key and an attribute value.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Key => CloudDirectory_AttributeKey

  The key of the attribute.


=head2 B<REQUIRED> Value => CloudDirectory_TypedAttributeValue

  The value of the attribute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

