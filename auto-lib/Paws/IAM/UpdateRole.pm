
package Paws::IAM::UpdateRole;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has MaxSessionDuration => (is => 'ro', isa => 'Int');
  has RoleName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRole');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::UpdateRoleResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateRoleResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::UpdateRole - Arguments for method UpdateRole on L<Paws::IAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRole on the
L<AWS Identity and Access Management|Paws::IAM> service. Use the attributes of this class
as arguments to method UpdateRole.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRole.

=head1 SYNOPSIS

    my $iam = Paws->service('IAM');
    my $UpdateRoleResponse = $iam->UpdateRole(
      RoleName           => 'MyroleNameType',
      Description        => 'MyroleDescriptionType',    # OPTIONAL
      MaxSessionDuration => 1,                          # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/iam/UpdateRole>

=head1 ATTRIBUTES


=head2 Description => Str

The new description that you want to apply to the specified role.



=head2 MaxSessionDuration => Int

The maximum session duration (in seconds) that you want to set for the
specified role. If you do not specify a value for this setting, the
default maximum of one hour is applied. This setting can have a value
from 1 hour to 12 hours.

Anyone who assumes the role from the AWS CLI or API can use the
C<DurationSeconds> API parameter or the C<duration-seconds> CLI
parameter to request a longer session. The C<MaxSessionDuration>
setting determines the maximum duration that can be requested using the
C<DurationSeconds> parameter. If users don't specify a value for the
C<DurationSeconds> parameter, their security credentials are valid for
one hour by default. This applies when you use the C<AssumeRole*> API
operations or the C<assume-role*> CLI operations but does not apply
when you use those operations to create a console URL. For more
information, see Using IAM Roles
(http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use.html) in
the I<IAM User Guide>.



=head2 B<REQUIRED> RoleName => Str

The name of the role that you want to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRole in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

