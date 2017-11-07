package Paws::CloudTrail::LookupAttribute;
  use Moose;
  has AttributeKey => (is => 'ro', isa => 'Str', required => 1);
  has AttributeValue => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::LookupAttribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudTrail::LookupAttribute object:

  $service_obj->Method(Att1 => { AttributeKey => $value, ..., AttributeValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudTrail::LookupAttribute object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeKey

=head1 DESCRIPTION

Specifies an attribute and value that filter the events returned.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeKey => Str

  Specifies an attribute on which to filter the events returned.


=head2 B<REQUIRED> AttributeValue => Str

  Specifies a value for the specified AttributeKey.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

