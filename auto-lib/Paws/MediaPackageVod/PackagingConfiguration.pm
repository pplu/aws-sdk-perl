package Paws::MediaPackageVod::PackagingConfiguration;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has CmafPackage => (is => 'ro', isa => 'Paws::MediaPackageVod::CmafPackage', request_name => 'cmafPackage', traits => ['NameInRequest']);
  has DashPackage => (is => 'ro', isa => 'Paws::MediaPackageVod::DashPackage', request_name => 'dashPackage', traits => ['NameInRequest']);
  has HlsPackage => (is => 'ro', isa => 'Paws::MediaPackageVod::HlsPackage', request_name => 'hlsPackage', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has MssPackage => (is => 'ro', isa => 'Paws::MediaPackageVod::MssPackage', request_name => 'mssPackage', traits => ['NameInRequest']);
  has PackagingGroupId => (is => 'ro', isa => 'Str', request_name => 'packagingGroupId', traits => ['NameInRequest']);

1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaPackageVod::PackagingConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaPackageVod::PackagingConfiguration object:

  $service_obj->Method(Att1 => { Arn => $value, ..., PackagingGroupId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaPackageVod::PackagingConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A MediaPackage VOD PackagingConfiguration resource.

=head1 ATTRIBUTES


=head2 Arn => Str

  The ARN of the PackagingConfiguration.


=head2 CmafPackage => L<Paws::MediaPackageVod::CmafPackage>

  


=head2 DashPackage => L<Paws::MediaPackageVod::DashPackage>

  


=head2 HlsPackage => L<Paws::MediaPackageVod::HlsPackage>

  


=head2 Id => Str

  The ID of the PackagingConfiguration.


=head2 MssPackage => L<Paws::MediaPackageVod::MssPackage>

  


=head2 PackagingGroupId => Str

  The ID of a PackagingGroup.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaPackageVod>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

