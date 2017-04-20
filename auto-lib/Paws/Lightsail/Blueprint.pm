package Paws::Lightsail::Blueprint;
  use Moose;
  has BlueprintId => (is => 'ro', isa => 'Str', request_name => 'blueprintId', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has Group => (is => 'ro', isa => 'Str', request_name => 'group', traits => ['NameInRequest']);
  has IsActive => (is => 'ro', isa => 'Bool', request_name => 'isActive', traits => ['NameInRequest']);
  has LicenseUrl => (is => 'ro', isa => 'Str', request_name => 'licenseUrl', traits => ['NameInRequest']);
  has MinPower => (is => 'ro', isa => 'Int', request_name => 'minPower', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has ProductUrl => (is => 'ro', isa => 'Str', request_name => 'productUrl', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);
  has VersionCode => (is => 'ro', isa => 'Str', request_name => 'versionCode', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::Blueprint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::Blueprint object:

  $service_obj->Method(Att1 => { BlueprintId => $value, ..., VersionCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::Blueprint object:

  $result = $service_obj->Method(...);
  $result->Att1->BlueprintId

=head1 DESCRIPTION

Describes a blueprint (a virtual private server image).

=head1 ATTRIBUTES


=head2 BlueprintId => Str

  The ID for the virtual private server image (e.g., C<app_wordpress_4_4>
or C<app_lamp_7_0>).


=head2 Description => Str

  The description of the blueprint.


=head2 Group => Str

  The group name of the blueprint (e.g., C<amazon-linux>).


=head2 IsActive => Bool

  A Boolean value indicating whether the blueprint is active. When you
update your blueprints, you will inactivate old blueprints and keep the
most recent versions active.


=head2 LicenseUrl => Str

  The end-user license agreement URL for the image or blueprint.


=head2 MinPower => Int

  The minimum machine size required to run this blueprint. C<0> indicates
that the blueprint runs on all instances.


=head2 Name => Str

  The friendly name of the blueprint (e.g., C<Amazon Linux>).


=head2 ProductUrl => Str

  The product URL to learn more about the image or blueprint.


=head2 Type => Str

  The type of the blueprint (e.g., C<os> or C<app>).


=head2 Version => Str

  The version number of the operating system, application, or stack
(e.g., C<2016.03.0>).


=head2 VersionCode => Str

  The version code.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

