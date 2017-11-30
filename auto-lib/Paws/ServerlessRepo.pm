package Paws::ServerlessRepo;
  use Moose;
  sub service { 'serverlessrepo' }
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
  


  sub operations { qw/CreateApplication CreateApplicationVersion CreateCloudFormationChangeSet GetApplication GetApplicationPolicy ListApplications ListApplicationVersions PutApplicationPolicy UpdateApplication / }

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

AWS Serverless Repository

=head1 METHODS

=head2 CreateApplication([Author => Str, Description => Str, Labels => ArrayRef[Str|Undef], LicenseBody => Str, LicenseUrl => Str, Name => Str, ReadmeBody => Str, ReadmeUrl => Str, SemanticVersion => Str, SourceCodeUrl => Str, SpdxLicenseId => Str, TemplateBody => Str, TemplateUrl => Str])

Each argument is described in detail in: L<Paws::ServerlessRepo::CreateApplication>

Returns: a L<Paws::ServerlessRepo::CreateApplicationResponse> instance

Creates an application, optionally including an AWS SAM file to create
the first application version in the same call.


=head2 CreateApplicationVersion(ApplicationId => Str, SemanticVersion => Str, [SourceCodeUrl => Str, TemplateBody => Str, TemplateUrl => Str])

Each argument is described in detail in: L<Paws::ServerlessRepo::CreateApplicationVersion>

Returns: a L<Paws::ServerlessRepo::CreateApplicationVersionResponse> instance

Creates an application version.


=head2 CreateCloudFormationChangeSet(ApplicationId => Str, [ParameterOverrides => ArrayRef[L<Paws::ServerlessRepo::ParameterValue>], SemanticVersion => Str, StackName => Str])

Each argument is described in detail in: L<Paws::ServerlessRepo::CreateCloudFormationChangeSet>

Returns: a L<Paws::ServerlessRepo::CreateCloudFormationChangeSetResponse> instance

Creates an AWS CloudFormation ChangeSet for the given application.


=head2 GetApplication(ApplicationId => Str, [SemanticVersion => Str])

Each argument is described in detail in: L<Paws::ServerlessRepo::GetApplication>

Returns: a L<Paws::ServerlessRepo::GetApplicationResponse> instance

Gets the specified application.


=head2 GetApplicationPolicy(ApplicationId => Str)

Each argument is described in detail in: L<Paws::ServerlessRepo::GetApplicationPolicy>

Returns: a L<Paws::ServerlessRepo::GetApplicationPolicyResponse> instance

Gets the policy for the specified application.


=head2 ListApplications([MaxItems => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::ServerlessRepo::ListApplications>

Returns: a L<Paws::ServerlessRepo::ListApplicationsResponse> instance

Lists applications owned by the requester.


=head2 ListApplicationVersions(ApplicationId => Str, [MaxItems => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::ServerlessRepo::ListApplicationVersions>

Returns: a L<Paws::ServerlessRepo::ListApplicationVersionsResponse> instance

Lists versions for the specified application.


=head2 PutApplicationPolicy(ApplicationId => Str, [Statements => ArrayRef[L<Paws::ServerlessRepo::ApplicationPolicyStatement>]])

Each argument is described in detail in: L<Paws::ServerlessRepo::PutApplicationPolicy>

Returns: a L<Paws::ServerlessRepo::PutApplicationPolicyResponse> instance

Puts the policy for the specified application.


=head2 UpdateApplication(ApplicationId => Str, [Author => Str, Description => Str, Labels => ArrayRef[Str|Undef], ReadmeBody => Str, ReadmeUrl => Str])

Each argument is described in detail in: L<Paws::ServerlessRepo::UpdateApplication>

Returns: a L<Paws::ServerlessRepo::UpdateApplicationResponse> instance

Updates the specified application.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

