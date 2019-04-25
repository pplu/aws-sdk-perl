package Paws::Amplify::Branch;
  use Moose;
  has ActiveJobId => (is => 'ro', isa => 'Str', request_name => 'activeJobId', traits => ['NameInRequest'], required => 1);
  has BasicAuthCredentials => (is => 'ro', isa => 'Str', request_name => 'basicAuthCredentials', traits => ['NameInRequest']);
  has BranchArn => (is => 'ro', isa => 'Str', request_name => 'branchArn', traits => ['NameInRequest'], required => 1);
  has BranchName => (is => 'ro', isa => 'Str', request_name => 'branchName', traits => ['NameInRequest'], required => 1);
  has BuildSpec => (is => 'ro', isa => 'Str', request_name => 'buildSpec', traits => ['NameInRequest']);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest'], required => 1);
  has CustomDomains => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'customDomains', traits => ['NameInRequest'], required => 1);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest'], required => 1);
  has DisplayName => (is => 'ro', isa => 'Str', request_name => 'displayName', traits => ['NameInRequest']);
  has EnableAutoBuild => (is => 'ro', isa => 'Bool', request_name => 'enableAutoBuild', traits => ['NameInRequest'], required => 1);
  has EnableBasicAuth => (is => 'ro', isa => 'Bool', request_name => 'enableBasicAuth', traits => ['NameInRequest'], required => 1);
  has EnableNotification => (is => 'ro', isa => 'Bool', request_name => 'enableNotification', traits => ['NameInRequest'], required => 1);
  has EnvironmentVariables => (is => 'ro', isa => 'Paws::Amplify::EnvironmentVariables', request_name => 'environmentVariables', traits => ['NameInRequest'], required => 1);
  has Framework => (is => 'ro', isa => 'Str', request_name => 'framework', traits => ['NameInRequest'], required => 1);
  has Stage => (is => 'ro', isa => 'Str', request_name => 'stage', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Amplify::Tags', request_name => 'tags', traits => ['NameInRequest']);
  has ThumbnailUrl => (is => 'ro', isa => 'Str', request_name => 'thumbnailUrl', traits => ['NameInRequest']);
  has TotalNumberOfJobs => (is => 'ro', isa => 'Str', request_name => 'totalNumberOfJobs', traits => ['NameInRequest'], required => 1);
  has Ttl => (is => 'ro', isa => 'Str', request_name => 'ttl', traits => ['NameInRequest'], required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', request_name => 'updateTime', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::Branch

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::Branch object:

  $service_obj->Method(Att1 => { ActiveJobId => $value, ..., UpdateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::Branch object:

  $result = $service_obj->Method(...);
  $result->Att1->ActiveJobId

=head1 DESCRIPTION

Branch for an Amplify App, which maps to a 3rd party repository branch.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActiveJobId => Str

  Id of the active job for a branch, part of an Amplify App.


=head2 BasicAuthCredentials => Str

  Basic Authorization credentials for a branch, part of an Amplify App.


=head2 B<REQUIRED> BranchArn => Str

  ARN for a branch, part of an Amplify App.


=head2 B<REQUIRED> BranchName => Str

  Name for a branch, part of an Amplify App.


=head2 BuildSpec => Str

  BuildSpec content for branch for Amplify App.


=head2 B<REQUIRED> CreateTime => Str

  Creation date and time for a branch, part of an Amplify App.


=head2 B<REQUIRED> CustomDomains => ArrayRef[Str|Undef]

  Custom domains for a branch, part of an Amplify App.


=head2 B<REQUIRED> Description => Str

  Description for a branch, part of an Amplify App.


=head2 DisplayName => Str

  Display name for a branch, part of an Amplify App.


=head2 B<REQUIRED> EnableAutoBuild => Bool

  Enables auto-building on push for a branch, part of an Amplify App.


=head2 B<REQUIRED> EnableBasicAuth => Bool

  Enables Basic Authorization for a branch, part of an Amplify App.


=head2 B<REQUIRED> EnableNotification => Bool

  Enables notifications for a branch, part of an Amplify App.


=head2 B<REQUIRED> EnvironmentVariables => L<Paws::Amplify::EnvironmentVariables>

  Environment Variables specific to a branch, part of an Amplify App.


=head2 B<REQUIRED> Framework => Str

  Framework for a branch, part of an Amplify App.


=head2 B<REQUIRED> Stage => Str

  Stage for a branch, part of an Amplify App.


=head2 Tags => L<Paws::Amplify::Tags>

  Tag for branch for Amplify App.


=head2 ThumbnailUrl => Str

  Thumbnail Url for the branch.


=head2 B<REQUIRED> TotalNumberOfJobs => Str

  Total number of Jobs part of an Amplify App.


=head2 B<REQUIRED> Ttl => Str

  The content TTL for the website in seconds.


=head2 B<REQUIRED> UpdateTime => Str

  Last updated date and time for a branch, part of an Amplify App.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

