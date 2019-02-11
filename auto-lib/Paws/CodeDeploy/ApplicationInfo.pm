package Paws::CodeDeploy::ApplicationInfo;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', request_name => 'applicationId', traits => ['NameInRequest']);
  has ApplicationName => (is => 'ro', isa => 'Str', request_name => 'applicationName', traits => ['NameInRequest']);
  has ComputePlatform => (is => 'ro', isa => 'Str', request_name => 'computePlatform', traits => ['NameInRequest']);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest']);
  has GitHubAccountName => (is => 'ro', isa => 'Str', request_name => 'gitHubAccountName', traits => ['NameInRequest']);
  has LinkedToGitHub => (is => 'ro', isa => 'Bool', request_name => 'linkedToGitHub', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ApplicationInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::ApplicationInfo object:

  $service_obj->Method(Att1 => { ApplicationId => $value, ..., LinkedToGitHub => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::ApplicationInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationId

=head1 DESCRIPTION

Information about an application.

=head1 ATTRIBUTES


=head2 ApplicationId => Str

  The application ID.


=head2 ApplicationName => Str

  The application name.


=head2 ComputePlatform => Str

  The destination platform type for deployment of the application
(C<Lambda> or C<Server>).


=head2 CreateTime => Str

  The time at which the application was created.


=head2 GitHubAccountName => Str

  The name for a connection to a GitHub account.


=head2 LinkedToGitHub => Bool

  True if the user has authenticated with GitHub for the specified
application. Otherwise, false.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

