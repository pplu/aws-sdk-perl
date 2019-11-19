# Generated from default/object.tt
package Paws::CloudDirectory::BatchListObjectAttributesResponse;
  use Moo;
  use Types::Standard qw/ArrayRef Str/;
  use Paws::CloudDirectory::Types qw/CloudDirectory_AttributeKeyAndValue/;
  has Attributes => (is => 'ro', isa => ArrayRef[CloudDirectory_AttributeKeyAndValue]);
  has NextToken => (is => 'ro', isa => Str);

    sub params_map {
    our $Params_map ||= {
  'types' => {
               'NextToken' => {
                                'type' => 'Str'
                              },
               'Attributes' => {
                                 'type' => 'ArrayRef[CloudDirectory_AttributeKeyAndValue]',
                                 'class' => 'Paws::CloudDirectory::AttributeKeyAndValue'
                               }
             }
}
;
    return $Params_map;
  }


1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::BatchListObjectAttributesResponse

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudDirectory::BatchListObjectAttributesResponse object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., NextToken => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudDirectory::BatchListObjectAttributesResponse object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

Represents the output of a ListObjectAttributes response operation.

=head1 ATTRIBUTES


=head2 Attributes => ArrayRef[CloudDirectory_AttributeKeyAndValue]

  The attributes map that is associated with the object. C<AttributeArn>
is the key; attribute value is the value.


=head2 NextToken => Str

  The pagination token.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

