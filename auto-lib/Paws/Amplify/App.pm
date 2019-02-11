package Paws::Amplify::App;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', request_name => 'appArn', traits => ['NameInRequest'], required => 1);
  has AppId => (is => 'ro', isa => 'Str', request_name => 'appId', traits => ['NameInRequest'], required => 1);
  has BasicAuthCredentials => (is => 'ro', isa => 'Str', request_name => 'basicAuthCredentials', traits => ['NameInRequest']);
  has BuildSpec => (is => 'ro', isa => 'Str', request_name => 'buildSpec', traits => ['NameInRequest']);
  has CreateTime => (is => 'ro', isa => 'Str', request_name => 'createTime', traits => ['NameInRequest'], required => 1);
  has CustomRules => (is => 'ro', isa => 'ArrayRef[Paws::Amplify::CustomRule]', request_name => 'customRules', traits => ['NameInRequest']);
  has DefaultDomain => (is => 'ro', isa => 'Str', request_name => 'defaultDomain', traits => ['NameInRequest'], required => 1);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest'], required => 1);
  has EnableBasicAuth => (is => 'ro', isa => 'Bool', request_name => 'enableBasicAuth', traits => ['NameInRequest'], required => 1);
  has EnableBranchAutoBuild => (is => 'ro', isa => 'Bool', request_name => 'enableBranchAutoBuild', traits => ['NameInRequest'], required => 1);
  has EnvironmentVariables => (is => 'ro', isa => 'Paws::Amplify::EnvironmentVariables', request_name => 'environmentVariables', traits => ['NameInRequest'], required => 1);
  has IamServiceRoleArn => (is => 'ro', isa => 'Str', request_name => 'iamServiceRoleArn', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest'], required => 1);
  has Platform => (is => 'ro', isa => 'Str', request_name => 'platform', traits => ['NameInRequest'], required => 1);
  has ProductionBranch => (is => 'ro', isa => 'Paws::Amplify::ProductionBranch', request_name => 'productionBranch', traits => ['NameInRequest']);
  has Repository => (is => 'ro', isa => 'Str', request_name => 'repository', traits => ['NameInRequest'], required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Amplify::Tags', request_name => 'tags', traits => ['NameInRequest']);
  has UpdateTime => (is => 'ro', isa => 'Str', request_name => 'updateTime', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Amplify::App

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Amplify::App object:

  $service_obj->Method(Att1 => { AppArn => $value, ..., UpdateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Amplify::App object:

  $result = $service_obj->Method(...);
  $result->Att1->AppArn

=head1 DESCRIPTION

Amplify App represents different branches of a repository for building,
deploying, and hosting.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

  ARN for the Amplify App.


=head2 B<REQUIRED> AppId => Str

  Unique Id for the Amplify App.


=head2 BasicAuthCredentials => Str

  Basic Authorization credentials for branches for the Amplify App.


=head2 BuildSpec => Str

  BuildSpec content for Amplify App.


=head2 B<REQUIRED> CreateTime => Str

  Create date / time for the Amplify App.


=head2 CustomRules => ArrayRef[L<Paws::Amplify::CustomRule>]

  Custom redirect / rewrite rules for the Amplify App.


=head2 B<REQUIRED> DefaultDomain => Str

  Default domain for the Amplify App.


=head2 B<REQUIRED> Description => Str

  Description for the Amplify App.


=head2 B<REQUIRED> EnableBasicAuth => Bool

  Enables Basic Authorization for branches for the Amplify App.


=head2 B<REQUIRED> EnableBranchAutoBuild => Bool

  Enables auto-building of branches for the Amplify App.


=head2 B<REQUIRED> EnvironmentVariables => L<Paws::Amplify::EnvironmentVariables>

  Environment Variables for the Amplify App.


=head2 IamServiceRoleArn => Str

  IAM service role ARN for the Amplify App.


=head2 B<REQUIRED> Name => Str

  Name for the Amplify App.


=head2 B<REQUIRED> Platform => Str

  Platform for the Amplify App.


=head2 ProductionBranch => L<Paws::Amplify::ProductionBranch>

  Structure with Production Branch information.


=head2 B<REQUIRED> Repository => Str

  Repository for the Amplify App.


=head2 Tags => L<Paws::Amplify::Tags>

  Tag for Amplify App.


=head2 B<REQUIRED> UpdateTime => Str

  Update date / time for the Amplify App.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Amplify>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

