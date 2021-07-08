
package Paws::IoTFleetHub::DescribeApplicationResponse;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationArn', required => 1);
  has ApplicationCreationDate => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'applicationCreationDate', required => 1);
  has ApplicationDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationDescription');
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationId', required => 1);
  has ApplicationLastUpdateDate => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'applicationLastUpdateDate', required => 1);
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName', required => 1);
  has ApplicationState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationState', required => 1);
  has ApplicationUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationUrl', required => 1);
  has ErrorMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'errorMessage');
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has SsoClientId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ssoClientId');
  has Tags => (is => 'ro', isa => 'Paws::IoTFleetHub::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetHub::DescribeApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationArn => Str

The ARN of the web application.


=head2 B<REQUIRED> ApplicationCreationDate => Int

The date (in Unix epoch time) when the application was created.


=head2 ApplicationDescription => Str

An optional description of the web application.


=head2 B<REQUIRED> ApplicationId => Str

The unique Id of the web application.


=head2 B<REQUIRED> ApplicationLastUpdateDate => Int

The date (in Unix epoch time) when the application was last updated.


=head2 B<REQUIRED> ApplicationName => Str

The name of the web application.


=head2 B<REQUIRED> ApplicationState => Str

The current state of the web application.

Valid values are: C<"CREATING">, C<"DELETING">, C<"ACTIVE">, C<"CREATE_FAILED">, C<"DELETE_FAILED">
=head2 B<REQUIRED> ApplicationUrl => Str

The URL of the web application.


=head2 ErrorMessage => Str

A message indicating why the C<DescribeApplication> API failed.


=head2 B<REQUIRED> RoleArn => Str

The ARN of the role that the web application assumes when it interacts
with AWS IoT Core.


=head2 SsoClientId => Str

The Id of the single sign-on client that you use to authenticate and
authorize users on the web application.


=head2 Tags => L<Paws::IoTFleetHub::TagMap>

A set of key/value pairs that you can use to manage the web application
resource.


=head2 _request_id => Str


=cut

