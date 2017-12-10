package Paws::MediaLive::MsSmoothOutputSettings;
  use Moose;
  has NameModifier => (is => 'ro', isa => 'Str', request_name => 'nameModifier', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::MsSmoothOutputSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::MsSmoothOutputSettings object:

  $service_obj->Method(Att1 => { NameModifier => $value, ..., NameModifier => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::MsSmoothOutputSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->NameModifier

=head1 DESCRIPTION

Placeholder documentation for MsSmoothOutputSettings

=head1 ATTRIBUTES


=head2 NameModifier => Str

  String concatenated to the end of the destination filename. Required
for multiple outputs of the same type.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

