package Paws::MediaConvert::SpekeKeyProvider;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest'], required => 1);
  has SystemIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'systemIds', traits => ['NameInRequest'], required => 1);
  has Url => (is => 'ro', isa => 'Str', request_name => 'url', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::SpekeKeyProvider

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::SpekeKeyProvider object:

  $service_obj->Method(Att1 => { ResourceId => $value, ..., Url => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::SpekeKeyProvider object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceId

=head1 DESCRIPTION

Settings for use with a SPEKE key provider

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

  The SPEKE-compliant server uses Resource ID (ResourceId) to identify
content.


=head2 B<REQUIRED> SystemIds => ArrayRef[Str|Undef]

  Relates to SPEKE implementation. DRM system identifiers. DASH output
groups support a max of two system ids. Other group types support one
system id.


=head2 B<REQUIRED> Url => Str

  Use URL (Url) to specify the SPEKE-compliant server that will provide
keys for content.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

