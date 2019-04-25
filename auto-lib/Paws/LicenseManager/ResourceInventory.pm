package Paws::LicenseManager::ResourceInventory;
  use Moose;
  has Platform => (is => 'ro', isa => 'Str');
  has PlatformVersion => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceOwningAccountId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManager::ResourceInventory

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::LicenseManager::ResourceInventory object:

  $service_obj->Method(Att1 => { Platform => $value, ..., ResourceType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::LicenseManager::ResourceInventory object:

  $result = $service_obj->Method(...);
  $result->Att1->Platform

=head1 DESCRIPTION

A set of attributes that describe a resource.

=head1 ATTRIBUTES


=head2 Platform => Str

  The platform of the resource.


=head2 PlatformVersion => Str

  Platform version of the resource in the inventory.


=head2 ResourceArn => Str

  The ARN of the resource.


=head2 ResourceId => Str

  Unique ID of the resource.


=head2 ResourceOwningAccountId => Str

  Unique ID of the account that owns the resource.


=head2 ResourceType => Str

  The type of resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::LicenseManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

