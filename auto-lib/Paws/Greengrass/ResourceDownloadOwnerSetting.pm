package Paws::Greengrass::ResourceDownloadOwnerSetting;
  use Moose;
  has GroupOwner => (is => 'ro', isa => 'Str', required => 1);
  has GroupPermission => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ResourceDownloadOwnerSetting

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::ResourceDownloadOwnerSetting object:

  $service_obj->Method(Att1 => { GroupOwner => $value, ..., GroupPermission => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::ResourceDownloadOwnerSetting object:

  $result = $service_obj->Method(...);
  $result->Att1->GroupOwner

=head1 DESCRIPTION

The owner setting for downloaded machine learning resources.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupOwner => Str

  The group owner of the resource. This is the name of an existing Linux
OS group on the system or a GID. The group's permissions are added to
the Lambda process.


=head2 B<REQUIRED> GroupPermission => Str

  The permissions that the group owner has to the resource. Valid values
are ''rw'' (read/write) or ''ro'' (read-only).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

