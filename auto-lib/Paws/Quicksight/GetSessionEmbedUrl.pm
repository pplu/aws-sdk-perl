
package Paws::Quicksight::GetSessionEmbedUrl;
  use Moose;
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'AwsAccountId', required => 1);
  has EntryPoint => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'entry-point');
  has SessionLifetimeInMinutes => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'session-lifetime');
  has UserArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'user-arn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSessionEmbedUrl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts/{AwsAccountId}/session-embed-url');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Quicksight::GetSessionEmbedUrlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Quicksight::GetSessionEmbedUrl - Arguments for method GetSessionEmbedUrl on L<Paws::Quicksight>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSessionEmbedUrl on the
L<Amazon QuickSight|Paws::Quicksight> service. Use the attributes of this class
as arguments to method GetSessionEmbedUrl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSessionEmbedUrl.

=head1 SYNOPSIS

    my $quicksight = Paws->service('Quicksight');
    my $GetSessionEmbedUrlResponse = $quicksight->GetSessionEmbedUrl(
      AwsAccountId             => 'MyAwsAccountId',
      EntryPoint               => 'MyEntryPoint',     # OPTIONAL
      SessionLifetimeInMinutes => 1,                  # OPTIONAL
      UserArn                  => 'MyArn',            # OPTIONAL
    );

    # Results:
    my $EmbedUrl  = $GetSessionEmbedUrlResponse->EmbedUrl;
    my $RequestId = $GetSessionEmbedUrlResponse->RequestId;
    my $Status    = $GetSessionEmbedUrlResponse->Status;

    # Returns a L<Paws::Quicksight::GetSessionEmbedUrlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/quicksight/GetSessionEmbedUrl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AwsAccountId => Str

The ID for the AWS account associated with your QuickSight
subscription.



=head2 EntryPoint => Str

The URL you use to access the embedded session. The entry point URL is
constrained to the following paths:

=over

=item *

C</start>

=item *

C</start/analyses>

=item *

C</start/dashboards>

=item *

C</start/favorites>

=item *

C</dashboards/I<DashboardId> > - where C<DashboardId> is the actual ID
key from the QuickSight console URL of the dashboard

=item *

C</analyses/I<AnalysisId> > - where C<AnalysisId> is the actual ID key
from the QuickSight console URL of the analysis

=back




=head2 SessionLifetimeInMinutes => Int

How many minutes the session is valid. The session lifetime must be
15-600 minutes.



=head2 UserArn => Str

The Amazon QuickSight user's Amazon Resource Name (ARN), for use with
C<QUICKSIGHT> identity type. You can use this for any type of Amazon
QuickSight users in your account (readers, authors, or admins). They
need to be authenticated as one of the following:

=over

=item 1.

Active Directory (AD) users or group members

=item 2.

Invited nonfederated users

=item 3.

AWS Identity and Access Management (IAM) users and IAM role-based
sessions authenticated through Federated Single Sign-On using SAML,
OpenID Connect, or IAM federation

=back

Omit this parameter for users in the third group, IAM users and IAM
role-based sessions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSessionEmbedUrl in L<Paws::Quicksight>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

