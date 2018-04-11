package Paws::MediaPackage::OriginEndpointUpdateParameters;
  use Moose;
  has CmafPackage => (is => 'ro', isa => 'Paws::MediaPackage::CmafPackageCreateOrUpdateParameters', request_name => 'cmafPackage', traits => ['NameInRequest']);
  has DashPackage => (is => 'ro', isa => 'Paws::MediaPackage::DashPackage', request_name => 'dashPackage', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has HlsPackage => (is => 'ro', isa => 'Paws::MediaPackage::HlsPackage', request_name => 'hlsPackage', traits => ['NameInRequest']);
  has ManifestName => (is => 'ro', isa => 'Str', request_name => 'manifestName', traits => ['NameInRequest']);
  has MssPackage => (is => 'ro', isa => 'Paws::MediaPackage::MssPackage', request_name => 'mssPackage', traits => ['NameInRequest']);
  has StartoverWindowSeconds => (is => 'ro', isa => 'Int', request_name => 'startoverWindowSeconds', traits => ['NameInRequest']);
  has TimeDelaySeconds => (is => 'ro', isa => 'Int', request_name => 'timeDelaySeconds', traits => ['NameInRequest']);
  has Whitelist => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'whitelist', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackage::OriginEndpointUpdateParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackage::OriginEndpointUpdateParameters object:

  $service_obj->Method(Att1 => { CmafPackage => $value, ..., Whitelist => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackage::OriginEndpointUpdateParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->CmafPackage

=head1 DESCRIPTION

Configuration parameters for updating an existing OriginEndpoint.

=head1 ATTRIBUTES


=head2 CmafPackage => L<Paws::MediaPackage::CmafPackageCreateOrUpdateParameters>

  


=head2 DashPackage => L<Paws::MediaPackage::DashPackage>

  


=head2 Description => Str

  A short text description of the OriginEndpoint.


=head2 HlsPackage => L<Paws::MediaPackage::HlsPackage>

  


=head2 ManifestName => Str

  A short string that will be appended to the end of the Endpoint URL.


=head2 MssPackage => L<Paws::MediaPackage::MssPackage>

  


=head2 StartoverWindowSeconds => Int

  Maximum duration (in seconds) of content to retain for startover
playback. If not specified, startover playback will be disabled for the
OriginEndpoint.


=head2 TimeDelaySeconds => Int

  Amount of delay (in seconds) to enforce on the playback of live
content. If not specified, there will be no time delay in effect for
the OriginEndpoint.


=head2 Whitelist => ArrayRef[Str|Undef]

  A list of source IP CIDR blocks that will be allowed to access the
OriginEndpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackage>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

