
package Paws::AlexaForBusiness::AssociateSkillWithUsers;
  use Moose;
  has OrganizationArn => (is => 'ro', isa => 'Str');
  has SkillId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateSkillWithUsers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::AssociateSkillWithUsersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::AssociateSkillWithUsers - Arguments for method AssociateSkillWithUsers on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateSkillWithUsers on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method AssociateSkillWithUsers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateSkillWithUsers.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $AssociateSkillWithUsersResponse = $a4b->AssociateSkillWithUsers(
      SkillId         => 'MySkillId',
      OrganizationArn => 'MyArn',       # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/AssociateSkillWithUsers>

=head1 ATTRIBUTES


=head2 OrganizationArn => Str

The ARN of the organization.



=head2 B<REQUIRED> SkillId => Str

The private skill ID you want to make available to enrolled users.E<gt>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateSkillWithUsers in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

