
package Paws::SageMaker::UpdateWorkteam;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has MemberDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::SageMaker::MemberDefinition]');
  has WorkteamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateWorkteam');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::UpdateWorkteamResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::UpdateWorkteam - Arguments for method UpdateWorkteam on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateWorkteam on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method UpdateWorkteam.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateWorkteam.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    my $UpdateWorkteamResponse = $api . sagemaker->UpdateWorkteam(
      WorkteamName      => 'MyWorkteamName',
      Description       => 'MyString200',      # OPTIONAL
      MemberDefinitions => [
        {
          CognitoMemberDefinition => {
            ClientId  => 'MyCognitoClientId',     # min: 1, max: 128
            UserGroup => 'MyCognitoUserGroup',    # min: 1, max: 128
            UserPool  => 'MyCognitoUserPool',     # min: 1, max: 55

          },    # OPTIONAL
        },
        ...
      ],        # OPTIONAL
    );

    # Results:
    my $Workteam = $UpdateWorkteamResponse->Workteam;

    # Returns a L<Paws::SageMaker::UpdateWorkteamResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/UpdateWorkteam>

=head1 ATTRIBUTES


=head2 Description => Str

An updated description for the work team.



=head2 MemberDefinitions => ArrayRef[L<Paws::SageMaker::MemberDefinition>]

A list of C<MemberDefinition> objects that contain the updated work
team members.



=head2 B<REQUIRED> WorkteamName => Str

The name of the work team to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateWorkteam in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

