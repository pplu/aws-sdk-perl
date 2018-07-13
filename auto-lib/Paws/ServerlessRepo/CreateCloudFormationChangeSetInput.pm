package Paws::ServerlessRepo::CreateCloudFormationChangeSetInput;
  use Moose;
  has ParameterOverrides => (is => 'ro', isa => 'ArrayRef[Paws::ServerlessRepo::ParameterValue]', request_name => 'parameterOverrides', traits => ['NameInRequest']);
  has SemanticVersion => (is => 'ro', isa => 'Str', request_name => 'semanticVersion', traits => ['NameInRequest']);
  has StackName => (is => 'ro', isa => 'Str', request_name => 'stackName', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::CreateCloudFormationChangeSetInput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::CreateCloudFormationChangeSetInput object:

  $service_obj->Method(Att1 => { ParameterOverrides => $value, ..., StackName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::CreateCloudFormationChangeSetInput object:

  $result = $service_obj->Method(...);
  $result->Att1->ParameterOverrides

=head1 DESCRIPTION

Create an application change set request.

=head1 ATTRIBUTES


=head2 ParameterOverrides => ArrayRef[L<Paws::ServerlessRepo::ParameterValue>]

  A list of parameter values for the parameters of the application.


=head2 SemanticVersion => Str

  The semantic version of the application:

https://semver.org/ (https://semver.org/)


=head2 B<REQUIRED> StackName => Str

  The name or the unique ID of the stack for which you are creating a
change set. AWS CloudFormation generates the change set by comparing
this stack's information with the information that you submit, such as
a modified template or different parameter input values.

Constraints: Minimum length of 1.

Pattern:
([a-zA-Z][-a-zA-Z0-9]*)|(arn:\b(aws|aws-us-gov|aws-cn)\b:[-a-zA-Z0-9:/._+]*)



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

