
package Paws::ServerlessRepo::CreateCloudFormationChangeSet;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ParameterOverrides => (is => 'ro', isa => 'ArrayRef[Paws::ServerlessRepo::ParameterValue]', traits => ['NameInRequest'], request_name => 'parameterOverrides');
  has SemanticVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'semanticVersion');
  has StackName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stackName');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCloudFormationChangeSet');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/changesets');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServerlessRepo::CreateCloudFormationChangeSetResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::CreateCloudFormationChangeSet - Arguments for method CreateCloudFormationChangeSet on L<Paws::ServerlessRepo>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCloudFormationChangeSet on the 
L<AWSServerlessApplicationRepository|Paws::ServerlessRepo> service. Use the attributes of this class
as arguments to method CreateCloudFormationChangeSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCloudFormationChangeSet.

As an example:

  $service_obj->CreateCloudFormationChangeSet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The ID of the application to get.



=head2 ParameterOverrides => ArrayRef[L<Paws::ServerlessRepo::ParameterValue>]

A list of parameter values for the parameters of the application.



=head2 SemanticVersion => Str

The semantic version of the application:

https://semver.org/ (https://semver.org/)



=head2 StackName => Str

The name or the unique ID of the stack for which you are creating a
change set. AWS CloudFormation generates the change set by comparing
this stack's information with the information that you submit, such as
a modified template or different parameter input values.

Constraints: Minimum length of 1.

Pattern:
([a-zA-Z][-a-zA-Z0-9]*)|(arn:\b(aws|aws-us-gov|aws-cn)\b:[-a-zA-Z0-9:/._+]*)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCloudFormationChangeSet in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

