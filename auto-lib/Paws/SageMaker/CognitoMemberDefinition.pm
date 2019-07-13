package Paws::SageMaker::CognitoMemberDefinition;
  use Moose;
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has UserGroup => (is => 'ro', isa => 'Str', required => 1);
  has UserPool => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::CognitoMemberDefinition

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SageMaker::CognitoMemberDefinition object:

  $service_obj->Method(Att1 => { ClientId => $value, ..., UserPool => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SageMaker::CognitoMemberDefinition object:

  $result = $service_obj->Method(...);
  $result->Att1->ClientId

=head1 DESCRIPTION

Identifies a Amazon Cognito user group. A user group can be used in on
or more work teams.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientId => Str

  An identifier for an application client. You must create the app client
ID using Amazon Cognito.


=head2 B<REQUIRED> UserGroup => Str

  An identifier for a user group.


=head2 B<REQUIRED> UserPool => Str

  An identifier for a user pool. The user pool must be in the same region
as the service that you are calling.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

