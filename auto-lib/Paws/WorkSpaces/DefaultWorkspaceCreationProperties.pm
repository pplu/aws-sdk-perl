package Paws::WorkSpaces::DefaultWorkspaceCreationProperties;
  use Moose;
  has CustomSecurityGroupId => (is => 'ro', isa => 'Str');
  has DefaultOu => (is => 'ro', isa => 'Str');
  has EnableInternetAccess => (is => 'ro', isa => 'Bool');
  has EnableWorkDocs => (is => 'ro', isa => 'Bool');
  has UserEnabledAsLocalAdministrator => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DefaultWorkspaceCreationProperties

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::DefaultWorkspaceCreationProperties object:

  $service_obj->Method(Att1 => { CustomSecurityGroupId => $value, ..., UserEnabledAsLocalAdministrator => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::DefaultWorkspaceCreationProperties object:

  $result = $service_obj->Method(...);
  $result->Att1->CustomSecurityGroupId

=head1 DESCRIPTION

Describes the default values used to create a WorkSpace.

=head1 ATTRIBUTES


=head2 CustomSecurityGroupId => Str

  The identifier of any security groups to apply to WorkSpaces when they
are created.


=head2 DefaultOu => Str

  The organizational unit (OU) in the directory for the WorkSpace machine
accounts.


=head2 EnableInternetAccess => Bool

  The public IP address to attach to all WorkSpaces that are created or
rebuilt.


=head2 EnableWorkDocs => Bool

  Specifies whether the directory is enabled for Amazon WorkDocs.


=head2 UserEnabledAsLocalAdministrator => Bool

  Specifies whether the WorkSpace user is an administrator on the
WorkSpace.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

