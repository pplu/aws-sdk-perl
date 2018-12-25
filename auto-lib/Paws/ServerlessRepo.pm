package Paws::ServerlessRepo;
  use Moose;
  sub service { 'serverlessrepo' }
  sub signing_name { 'serverlessrepo' }
  sub version { '2017-09-08' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub CreateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServerlessRepo::CreateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateApplicationVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServerlessRepo::CreateApplicationVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCloudFormationChangeSet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServerlessRepo::CreateCloudFormationChangeSet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCloudFormationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServerlessRepo::CreateCloudFormationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServerlessRepo::DeleteApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServerlessRepo::GetApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetApplicationPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServerlessRepo::GetApplicationPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCloudFormationTemplate {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServerlessRepo::GetCloudFormationTemplate', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplicationDependencies {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServerlessRepo::ListApplicationDependencies', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServerlessRepo::ListApplications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListApplicationVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServerlessRepo::ListApplicationVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutApplicationPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServerlessRepo::PutApplicationPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateApplication {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::ServerlessRepo::UpdateApplication', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllApplicationDependencies {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplicationDependencies(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApplicationDependencies(@_, NextToken => $next_result->NextToken);
        push @{ $result->Dependencies }, @{ $next_result->Dependencies };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Dependencies') foreach (@{ $result->Dependencies });
        $result = $self->ListApplicationDependencies(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Dependencies') foreach (@{ $result->Dependencies });
    }

    return undef
  }
  sub ListAllApplications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApplications(@_, NextToken => $next_result->NextToken);
        push @{ $result->Applications }, @{ $next_result->Applications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Applications') foreach (@{ $result->Applications });
        $result = $self->ListApplications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Applications') foreach (@{ $result->Applications });
    }

    return undef
  }
  sub ListAllApplicationVersions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListApplicationVersions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListApplicationVersions(@_, NextToken => $next_result->NextToken);
        push @{ $result->Versions }, @{ $next_result->Versions };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Versions') foreach (@{ $result->Versions });
        $result = $self->ListApplicationVersions(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Versions') foreach (@{ $result->Versions });
    }

    return undef
  }


  sub operations { qw/CreateApplication CreateApplicationVersion CreateCloudFormationChangeSet CreateCloudFormationTemplate DeleteApplication GetApplication GetApplicationPolicy GetCloudFormationTemplate ListApplicationDependencies ListApplications ListApplicationVersions PutApplicationPolicy UpdateApplication / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::ServerlessRepo - Perl Interface to AWS AWSServerlessApplicationRepository

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('ServerlessRepo');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

The AWS Serverless Application Repository makes it easy for developers
and enterprises to quickly find and deploy serverless applications in
the AWS Cloud. For more information about serverless applications, see
Serverless Computing and Applications on the AWS website.

The AWS Serverless Application Repository is deeply integrated with the
AWS Lambda console, so that developers of all levels can get started
with serverless computing without needing to learn anything new. You
can use category keywords to browse for applications such as web and
mobile backends, data processing applications, or chatbots. You can
also search for applications by name, publisher, or event source. To
use an application, you simply choose it, configure any required
fields, and deploy it with a few clicks.

You can also easily publish applications, sharing them publicly with
the community at large, or privately within your team or across your
organization. To publish a serverless application (or app), you can use
the AWS Management Console, AWS Command Line Interface (AWS CLI), or
AWS SDKs to upload the code. Along with the code, you upload a simple
manifest file, also known as the AWS Serverless Application Model (AWS
SAM) template. For more information about AWS SAM, see AWS Serverless
Application Model (AWS SAM) on the AWS Labs GitHub repository.

The AWS Serverless Application Repository Developer Guide contains more
information about the two developer experiences available:

=over

=item *

Consuming Applications E<ndash> Browse for applications and view
information about them, including source code and readme files. Also
install, configure, and deploy applications of your choosing.

Publishing Applications E<ndash> Configure and upload applications to
make them available to other developers, and publish new versions of
applications.

=back


For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/serverlessrepo-2017-09-08>


=head1 METHODS

=head2 CreateApplication

=over

=item Author => Str

=item Description => Str

=item Name => Str

=item [HomePageUrl => Str]

=item [Labels => ArrayRef[Str|Undef]]

=item [LicenseBody => Str]

=item [LicenseUrl => Str]

=item [ReadmeBody => Str]

=item [ReadmeUrl => Str]

=item [SemanticVersion => Str]

=item [SourceCodeUrl => Str]

=item [SpdxLicenseId => Str]

=item [TemplateBody => Str]

=item [TemplateUrl => Str]


=back

Each argument is described in detail in: L<Paws::ServerlessRepo::CreateApplication>

Returns: a L<Paws::ServerlessRepo::CreateApplicationResponse> instance

Creates an application, optionally including an AWS SAM file to create
the first application version in the same call.


=head2 CreateApplicationVersion

=over

=item ApplicationId => Str

=item SemanticVersion => Str

=item [SourceCodeUrl => Str]

=item [TemplateBody => Str]

=item [TemplateUrl => Str]


=back

Each argument is described in detail in: L<Paws::ServerlessRepo::CreateApplicationVersion>

Returns: a L<Paws::ServerlessRepo::CreateApplicationVersionResponse> instance

Creates an application version.


=head2 CreateCloudFormationChangeSet

=over

=item ApplicationId => Str

=item StackName => Str

=item [Capabilities => ArrayRef[Str|Undef]]

=item [ChangeSetName => Str]

=item [ClientToken => Str]

=item [Description => Str]

=item [NotificationArns => ArrayRef[Str|Undef]]

=item [ParameterOverrides => ArrayRef[L<Paws::ServerlessRepo::ParameterValue>]]

=item [ResourceTypes => ArrayRef[Str|Undef]]

=item [RollbackConfiguration => L<Paws::ServerlessRepo::RollbackConfiguration>]

=item [SemanticVersion => Str]

=item [Tags => ArrayRef[L<Paws::ServerlessRepo::Tag>]]

=item [TemplateId => Str]


=back

Each argument is described in detail in: L<Paws::ServerlessRepo::CreateCloudFormationChangeSet>

Returns: a L<Paws::ServerlessRepo::CreateCloudFormationChangeSetResponse> instance

Creates an AWS CloudFormation change set for the given application.


=head2 CreateCloudFormationTemplate

=over

=item ApplicationId => Str

=item [SemanticVersion => Str]


=back

Each argument is described in detail in: L<Paws::ServerlessRepo::CreateCloudFormationTemplate>

Returns: a L<Paws::ServerlessRepo::CreateCloudFormationTemplateResponse> instance

Creates an AWS CloudFormation template.


=head2 DeleteApplication

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::ServerlessRepo::DeleteApplication>

Returns: nothing

Deletes the specified application.


=head2 GetApplication

=over

=item ApplicationId => Str

=item [SemanticVersion => Str]


=back

Each argument is described in detail in: L<Paws::ServerlessRepo::GetApplication>

Returns: a L<Paws::ServerlessRepo::GetApplicationResponse> instance

Gets the specified application.


=head2 GetApplicationPolicy

=over

=item ApplicationId => Str


=back

Each argument is described in detail in: L<Paws::ServerlessRepo::GetApplicationPolicy>

Returns: a L<Paws::ServerlessRepo::GetApplicationPolicyResponse> instance

Retrieves the policy for the application.


=head2 GetCloudFormationTemplate

=over

=item ApplicationId => Str

=item TemplateId => Str


=back

Each argument is described in detail in: L<Paws::ServerlessRepo::GetCloudFormationTemplate>

Returns: a L<Paws::ServerlessRepo::GetCloudFormationTemplateResponse> instance

Gets the specified AWS CloudFormation template.


=head2 ListApplicationDependencies

=over

=item ApplicationId => Str

=item [MaxItems => Int]

=item [NextToken => Str]

=item [SemanticVersion => Str]


=back

Each argument is described in detail in: L<Paws::ServerlessRepo::ListApplicationDependencies>

Returns: a L<Paws::ServerlessRepo::ListApplicationDependenciesResponse> instance

Retrieves the list of applications nested in the containing
application.


=head2 ListApplications

=over

=item [MaxItems => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ServerlessRepo::ListApplications>

Returns: a L<Paws::ServerlessRepo::ListApplicationsResponse> instance

Lists applications owned by the requester.


=head2 ListApplicationVersions

=over

=item ApplicationId => Str

=item [MaxItems => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::ServerlessRepo::ListApplicationVersions>

Returns: a L<Paws::ServerlessRepo::ListApplicationVersionsResponse> instance

Lists versions for the specified application.


=head2 PutApplicationPolicy

=over

=item ApplicationId => Str

=item Statements => ArrayRef[L<Paws::ServerlessRepo::ApplicationPolicyStatement>]


=back

Each argument is described in detail in: L<Paws::ServerlessRepo::PutApplicationPolicy>

Returns: a L<Paws::ServerlessRepo::PutApplicationPolicyResponse> instance

Sets the permission policy for an application. For the list of actions
supported for this operation, see Application Permissions
(https://docs.aws.amazon.com/serverlessrepo/latest/devguide/access-control-resource-based.html#application-permissions)
.


=head2 UpdateApplication

=over

=item ApplicationId => Str

=item [Author => Str]

=item [Description => Str]

=item [HomePageUrl => Str]

=item [Labels => ArrayRef[Str|Undef]]

=item [ReadmeBody => Str]

=item [ReadmeUrl => Str]


=back

Each argument is described in detail in: L<Paws::ServerlessRepo::UpdateApplication>

Returns: a L<Paws::ServerlessRepo::UpdateApplicationResponse> instance

Updates the specified application.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllApplicationDependencies(sub { },ApplicationId => Str, [MaxItems => Int, NextToken => Str, SemanticVersion => Str])

=head2 ListAllApplicationDependencies(ApplicationId => Str, [MaxItems => Int, NextToken => Str, SemanticVersion => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Dependencies, passing the object as the first parameter, and the string 'Dependencies' as the second parameter 

If not, it will return a a L<Paws::ServerlessRepo::ListApplicationDependenciesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApplications(sub { },[MaxItems => Int, NextToken => Str])

=head2 ListAllApplications([MaxItems => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Applications, passing the object as the first parameter, and the string 'Applications' as the second parameter 

If not, it will return a a L<Paws::ServerlessRepo::ListApplicationsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllApplicationVersions(sub { },ApplicationId => Str, [MaxItems => Int, NextToken => Str])

=head2 ListAllApplicationVersions(ApplicationId => Str, [MaxItems => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Versions, passing the object as the first parameter, and the string 'Versions' as the second parameter 

If not, it will return a a L<Paws::ServerlessRepo::ListApplicationVersionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

