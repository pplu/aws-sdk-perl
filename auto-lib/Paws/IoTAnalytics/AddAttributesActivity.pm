package Paws::IoTAnalytics::AddAttributesActivity;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::IoTAnalytics::AttributeNameMapping', request_name => 'attributes', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Next => (is => 'ro', isa => 'Str', request_name => 'next', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::AddAttributesActivity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::AddAttributesActivity object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Next => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::AddAttributesActivity object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

An activity that adds other attributes based on existing attributes in
the message.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => L<Paws::IoTAnalytics::AttributeNameMapping>

  A list of 1-50 "AttributeNameMapping" objects that map an existing
attribute to a new attribute.

The existing attributes remain in the message, so if you want to remove
the originals, use "RemoveAttributeActivity".


=head2 B<REQUIRED> Name => Str

  The name of the 'addAttributes' activity.


=head2 Next => Str

  The next activity in the pipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

