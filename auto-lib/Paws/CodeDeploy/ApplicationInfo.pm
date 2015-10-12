package Paws::CodeDeploy::ApplicationInfo;
  use Moose;
  has applicationId => (is => 'ro', isa => 'Str');
  has applicationName => (is => 'ro', isa => 'Str');
  has createTime => (is => 'ro', isa => 'Str');
  has linkedToGitHub => (is => 'ro', isa => 'Bool');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ApplicationInfo

=head1 DESCRIPTION

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::ApplicationInfo object:

  $service_obj->Method(Att1 => { applicationId => $value, ..., linkedToGitHub => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::ApplicationInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->applicationId

=head1 ATTRIBUTES

=head2 applicationId => Str

  

The application ID.










=head2 applicationName => Str

  

The application name.










=head2 createTime => Str

  

The time that the application was created.










=head2 linkedToGitHub => Bool

  

True if the user has authenticated with GitHub for the specified
application; otherwise, false.












=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

