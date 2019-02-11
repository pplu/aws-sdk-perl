package Paws::WorkSpaces::WorkspaceBundle;
  use Moose;
  has BundleId => (is => 'ro', isa => 'Str');
  has ComputeType => (is => 'ro', isa => 'Paws::WorkSpaces::ComputeType');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Str');
  has RootStorage => (is => 'ro', isa => 'Paws::WorkSpaces::RootStorage');
  has UserStorage => (is => 'ro', isa => 'Paws::WorkSpaces::UserStorage');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::WorkspaceBundle

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::WorkSpaces::WorkspaceBundle object:

  $service_obj->Method(Att1 => { BundleId => $value, ..., UserStorage => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::WorkSpaces::WorkspaceBundle object:

  $result = $service_obj->Method(...);
  $result->Att1->BundleId

=head1 DESCRIPTION

Describes a WorkSpace bundle.

=head1 ATTRIBUTES


=head2 BundleId => Str

  The bundle identifier.


=head2 ComputeType => L<Paws::WorkSpaces::ComputeType>

  The compute type. For more information, see Amazon WorkSpaces Bundles
(http://aws.amazon.com/workspaces/details/#Amazon_WorkSpaces_Bundles).


=head2 Description => Str

  A description.


=head2 Name => Str

  The name of the bundle.


=head2 Owner => Str

  The owner of the bundle. This is the account identifier of the owner,
or C<AMAZON> if the bundle is provided by AWS.


=head2 RootStorage => L<Paws::WorkSpaces::RootStorage>

  The size of the root volume.


=head2 UserStorage => L<Paws::WorkSpaces::UserStorage>

  The size of the user storage.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::WorkSpaces>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

