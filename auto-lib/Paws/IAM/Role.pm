package Paws::IAM::Role;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has AssumeRolePolicyDocument => (is => 'ro', isa => 'Str', decode_as => 'URLJSON', method => 'Policy', traits => ['JSONAttribute']);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has RoleId => (is => 'ro', isa => 'Str', required => 1);
  has RoleName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::Role

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::Role object:

  $service_obj->Method(Att1 => { Arn => $value, ..., RoleName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::Role object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 ATTRIBUTES

=head2 B<REQUIRED> Arn => Str

  

The Amazon Resource Name (ARN) specifying the role. For more
information about ARNs and how to use them in policies, see IAM
Identifiers in the I<Using IAM> guide.










=head2 AssumeRolePolicyDocument => Str

  

The policy that grants an entity permission to assume the role.










=head2 B<REQUIRED> CreateDate => Str

  

The date and time, in ISO 8601 date-time format, when the role was
created.










=head2 B<REQUIRED> Path => Str

  

The path to the role. For more information about paths, see IAM
Identifiers in the I<Using IAM> guide.










=head2 B<REQUIRED> RoleId => Str

  

The stable and unique string identifying the role. For more information
about IDs, see IAM Identifiers in the I<Using IAM> guide.










=head2 B<REQUIRED> RoleName => Str

  

The friendly name that identifies the role.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

