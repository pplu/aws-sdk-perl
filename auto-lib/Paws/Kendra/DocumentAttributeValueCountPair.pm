package Paws::Kendra::DocumentAttributeValueCountPair;
  use Moose;
  has Count => (is => 'ro', isa => 'Int');
  has DocumentAttributeValue => (is => 'ro', isa => 'Paws::Kendra::DocumentAttributeValue');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DocumentAttributeValueCountPair

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Kendra::DocumentAttributeValueCountPair object:

  $service_obj->Method(Att1 => { Count => $value, ..., DocumentAttributeValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Kendra::DocumentAttributeValueCountPair object:

  $result = $service_obj->Method(...);
  $result->Att1->Count

=head1 DESCRIPTION

Provides the count of documents that match a particular attribute when
doing a faceted search.

=head1 ATTRIBUTES


=head2 Count => Int

  The number of documents in the response that have the attribute value
for the key.


=head2 DocumentAttributeValue => L<Paws::Kendra::DocumentAttributeValue>

  The value of the attribute. For example, "HR."



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

