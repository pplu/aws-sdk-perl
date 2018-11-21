package Paws::MediaConvert::StaticKeyProvider;
  use Moose;
  has KeyFormat => (is => 'ro', isa => 'Str', request_name => 'keyFormat', traits => ['NameInRequest']);
  has KeyFormatVersions => (is => 'ro', isa => 'Str', request_name => 'keyFormatVersions', traits => ['NameInRequest']);
  has StaticKeyValue => (is => 'ro', isa => 'Str', request_name => 'staticKeyValue', traits => ['NameInRequest']);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::StaticKeyProvider

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::StaticKeyProvider object:

  $service_obj->Method(Att1 => { KeyFormat => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::StaticKeyProvider object:

  $result = $service_obj->Method(...);
  $result->Att1->KeyFormat

=head1 DESCRIPTION

Use these settings to set up encryption with a static key provider.

=head1 ATTRIBUTES


=head2 KeyFormat => Str

  Relates to DRM implementation. Sets the value of the KEYFORMAT
attribute. Must be 'identity' or a reverse DNS string. May be omitted
to indicate an implicit value of 'identity'.


=head2 KeyFormatVersions => Str

  Relates to DRM implementation. Either a single positive integer version
value or a slash delimited list of version values (1/2/3).


=head2 StaticKeyValue => Str

  Relates to DRM implementation. Use a 32-character hexidecimal string to
specify Key Value (StaticKeyValue).


=head2 Url => Str

  Relates to DRM implementation. The location of the license server used
for protecting content.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

