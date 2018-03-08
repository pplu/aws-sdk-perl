package Paws::MediaLive::StaticKeySettings;
  use Moose;
  has KeyProviderServer => (is => 'ro', isa => 'Paws::MediaLive::InputLocation', request_name => 'keyProviderServer', traits => ['NameInRequest']);
  has StaticKeyValue => (is => 'ro', isa => 'Str', request_name => 'staticKeyValue', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaLive::StaticKeySettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaLive::StaticKeySettings object:

  $service_obj->Method(Att1 => { KeyProviderServer => $value, ..., StaticKeyValue => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaLive::StaticKeySettings object:

  $result = $service_obj->Method(...);
  $result->Att1->KeyProviderServer

=head1 DESCRIPTION

Placeholder documentation for StaticKeySettings

=head1 ATTRIBUTES


=head2 KeyProviderServer => L<Paws::MediaLive::InputLocation>

  The URL of the license server used for protecting content.


=head2 B<REQUIRED> StaticKeyValue => Str

  Static key value as a 32 character hexadecimal string.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaLive>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

