package Paws::ServerlessRepo::ChangeSetDetails;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', request_name => 'applicationId', traits => ['NameInRequest']);
  has ChangeSetId => (is => 'ro', isa => 'Str', request_name => 'changeSetId', traits => ['NameInRequest']);
  has SemanticVersion => (is => 'ro', isa => 'Str', request_name => 'semanticVersion', traits => ['NameInRequest']);
  has StackId => (is => 'ro', isa => 'Str', request_name => 'stackId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::ChangeSetDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::ChangeSetDetails object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., StackId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::ChangeSetDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Details of the change set.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The application Amazon Resource Name (ARN).


=head2 ChangeSetId => Str

  The ARN of the change set.\nLength Constraints: Minimum length of
1.\nPattern: arn:[-a-zA-Z0-9:/]*


=head2 SemanticVersion => Str

  The semantic version of the application:\n\n https://semver.org/


=head2 StackId => Str

  The unique ID of the stack.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

