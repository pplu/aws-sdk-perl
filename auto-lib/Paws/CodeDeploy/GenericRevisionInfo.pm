package Paws::CodeDeploy::GenericRevisionInfo;
  use Moose;
  has deploymentGroups => (is => 'ro', isa => 'ArrayRef[Str]');
  has description => (is => 'ro', isa => 'Str');
  has firstUsedTime => (is => 'ro', isa => 'Str');
  has lastUsedTime => (is => 'ro', isa => 'Str');
  has registerTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::GenericRevisionInfo

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::GenericRevisionInfo object:

  $service_obj->Method(Att1 => { deploymentGroups => $value, ..., registerTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::GenericRevisionInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->deploymentGroups

=head1 ATTRIBUTES

=head2 deploymentGroups => ArrayRef[Str]

  A list of deployment groups that use this revision.

=head2 description => Str

  A comment about the revision.

=head2 firstUsedTime => Str

  When the revision was first used by AWS CodeDeploy.

=head2 lastUsedTime => Str

  When the revision was last used by AWS CodeDeploy.

=head2 registerTime => Str

  When the revision was registered with AWS CodeDeploy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

