package Paws::MediaLive::AudioSelector;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has SelectorSettings => (is => 'ro', isa => 'Paws::MediaLive::AudioSelectorSettings', request_name => 'selectorSettings', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::AudioSelector

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::AudioSelector object:

  $service_obj->Method(Att1 => { Name => $value, ..., SelectorSettings => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::AudioSelector object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Placeholder documentation for AudioSelector

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

  The name of this AudioSelector. AudioDescriptions will use this name to
uniquely identify this Selector. Selector names should be unique per
input.


=head2 SelectorSettings => L<Paws::MediaLive::AudioSelectorSettings>

  The audio selector settings.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

