package Paws::IAM::InstanceProfile;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has InstanceProfileId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceProfileName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has Roles => (is => 'ro', isa => 'ArrayRef[Paws::IAM::Role]', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::InstanceProfile

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::InstanceProfile object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Roles => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::InstanceProfile object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about an instance profile.

This data type is used as a response element in the following
operations:

=over

=item *

CreateInstanceProfile

=item *

GetInstanceProfile

=item *

ListInstanceProfiles

=item *

ListInstanceProfilesForRole

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The Amazon Resource Name (ARN) specifying the instance profile. For
more information about ARNs and how to use them in policies, see IAM
Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 B<REQUIRED> CreateDate => Str

  The date when the instance profile was created.


=head2 B<REQUIRED> InstanceProfileId => Str

  The stable and unique string identifying the instance profile. For more
information about IDs, see IAM Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 B<REQUIRED> InstanceProfileName => Str

  The name identifying the instance profile.


=head2 B<REQUIRED> Path => Str

  The path to the instance profile. For more information about paths, see
IAM Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 B<REQUIRED> Roles => ArrayRef[L<Paws::IAM::Role>]

  The role associated with the instance profile.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

