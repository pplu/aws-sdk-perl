package Paws::IoTAnalytics::SelectAttributesActivity;
  use Moose;
  has Attributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'attributes', traits => ['NameInRequest'], required => 1);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Next => (is => 'ro', isa => 'Str', request_name => 'next', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTAnalytics::SelectAttributesActivity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IoTAnalytics::SelectAttributesActivity object:

  $service_obj->Method(Att1 => { Attributes => $value, ..., Next => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IoTAnalytics::SelectAttributesActivity object:

  $result = $service_obj->Method(...);
  $result->Att1->Attributes

=head1 DESCRIPTION

Creates a new message using only the specified attributes from the
original message.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Attributes => ArrayRef[Str|Undef]

  A list of the attributes to select from the message.


=head2 B<REQUIRED> Name => Str

  The name of the 'selectAttributes' activity.


=head2 Next => Str

  The next activity in the pipeline.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IoTAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

