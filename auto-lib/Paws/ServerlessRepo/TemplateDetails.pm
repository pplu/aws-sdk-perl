package Paws::ServerlessRepo::TemplateDetails;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', request_name => 'applicationId', traits => ['NameInRequest'], required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest'], required => 1);
  has ExpirationTime => (is => 'ro', isa => 'Str', request_name => 'expirationTime', traits => ['NameInRequest'], required => 1);
  has SemanticVersion => (is => 'ro', isa => 'Str', request_name => 'semanticVersion', traits => ['NameInRequest'], required => 1);
  has Status => (is => 'ro', isa => 'Str', request_name => 'status', traits => ['NameInRequest'], required => 1);
  has TemplateId => (is => 'ro', isa => 'Str', request_name => 'templateId', traits => ['NameInRequest'], required => 1);
  has TemplateUrl => (is => 'ro', isa => 'Str', request_name => 'templateUrl', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo::TemplateDetails

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServerlessRepo::TemplateDetails object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., TemplateUrl => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServerlessRepo::TemplateDetails object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Details of the template.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

  The application Amazon Resource Name (ARN).


=head2 B<REQUIRED> CreationTime => Str

  The date and time this resource was created.


=head2 B<REQUIRED> ExpirationTime => Str

  The date and time this template expires. Templates expire 1 hour after
creation.


=head2 B<REQUIRED> SemanticVersion => Str

  The semantic version of the application:

https://semver.org/ (https://semver.org/)


=head2 B<REQUIRED> Status => Str

  Status of the template creation workflow.

Possible values: PREPARING | ACTIVE | EXPIRED


=head2 B<REQUIRED> TemplateId => Str

  The UUID returned by CreateCloudFormationTemplate.

Pattern:
[0-9a-fA-F]{8}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{4}\-[0-9a-fA-F]{12}


=head2 B<REQUIRED> TemplateUrl => Str

  A link to the template that can be used to deploy the application using
AWS CloudFormation.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServerlessRepo>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

