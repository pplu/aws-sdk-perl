# Generated by default/object.tt
package Paws::SSMIncidents::AttributeValueList;
  use Moose;
  has IntegerValues => (is => 'ro', isa => 'ArrayRef[Int]', request_name => 'integerValues', traits => ['NameInRequest']);
  has StringValues => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'stringValues', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::AttributeValueList

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSMIncidents::AttributeValueList object:

  $service_obj->Method(Att1 => { IntegerValues => $value, ..., StringValues => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSMIncidents::AttributeValueList object:

  $result = $service_obj->Method(...);
  $result->Att1->IntegerValues

=head1 DESCRIPTION

Use the AttributeValueList to filter by string or integer values.

=head1 ATTRIBUTES


=head2 IntegerValues => ArrayRef[Int]

The list of integer values that the filter matches.


=head2 StringValues => ArrayRef[Str|Undef]

The list of string values that the filter matches.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

