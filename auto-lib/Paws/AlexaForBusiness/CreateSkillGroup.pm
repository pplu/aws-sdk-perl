
package Paws::AlexaForBusiness::CreateSkillGroup;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has SkillGroupName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSkillGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::CreateSkillGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateSkillGroup - Arguments for method CreateSkillGroup on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSkillGroup on the
L<Alexa For Business|Paws::AlexaForBusiness> service. Use the attributes of this class
as arguments to method CreateSkillGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSkillGroup.

=head1 SYNOPSIS

    my $a4b = Paws->service('AlexaForBusiness');
    my $CreateSkillGroupResponse = $a4b->CreateSkillGroup(
      SkillGroupName     => 'MySkillGroupName',
      ClientRequestToken => 'MyClientRequestToken',       # OPTIONAL
      Description        => 'MySkillGroupDescription',    # OPTIONAL
    );

    # Results:
    my $SkillGroupArn = $CreateSkillGroupResponse->SkillGroupArn;

    # Returns a L<Paws::AlexaForBusiness::CreateSkillGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/a4b/CreateSkillGroup>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, user-specified identifier for this request that ensures
idempotency.



=head2 Description => Str

The description for the skill group.



=head2 B<REQUIRED> SkillGroupName => Str

The name for the skill group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSkillGroup in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

