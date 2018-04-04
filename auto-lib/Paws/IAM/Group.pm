package Paws::IAM::Group;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has GroupId => (is => 'ro', isa => 'Str', required => 1);
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::Group

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::Group object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Path => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::Group object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about an IAM group entity.

This data type is used as a response element in the following
operations:

=over

=item *

CreateGroup

=item *

GetGroup

=item *

ListGroups

=back


=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

  The Amazon Resource Name (ARN) specifying the group. For more
information about ARNs and how to use them in policies, see IAM
Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 B<REQUIRED> CreateDate => Str

  The date and time, in ISO 8601 date-time format
(http://www.iso.org/iso/iso8601), when the group was created.


=head2 B<REQUIRED> GroupId => Str

  The stable and unique string identifying the group. For more
information about IDs, see IAM Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.


=head2 B<REQUIRED> GroupName => Str

  The friendly name that identifies the group.


=head2 B<REQUIRED> Path => Str

  The path to the group. For more information about paths, see IAM
Identifiers
(http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html)
in the I<Using IAM> guide.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

