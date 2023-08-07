package Paws::Credential::AssumeRoleWithWebIdentity;
  use Moose;
  use DateTime::Format::ISO8601;
  use Paws::Credential::None;

  with 'Paws::Credential';

  has expiration => (
    is => 'rw',
    isa => 'Int',
    lazy => 1,
    default => sub { 0 }
  );

  has actual_creds => (is => 'rw', default => sub { {} });

  sub access_key {
    my $self = shift;
    $self->_refresh;
    $self->actual_creds->{AccessKeyId};
  }

  sub secret_key {
    my $self = shift;
    $self->_refresh;
    $self->actual_creds->{SecretAccessKey};
  }

  sub session_token {
    my $self = shift;
    $self->_refresh;
    $self->actual_creds->SessionToken;
  }

  has sts_region => (is => 'ro', isa => 'Str|Undef', default => sub { undef });

  has sts => (is => 'ro', isa => 'Paws::STS', lazy => 1, default => sub {
    my $self = shift;
    Paws->service('STS', region => $self->sts_region, credentials => Paws::Credential::None->new);
  });

  has RoleArn => (is => 'rw', isa => 'Maybe[Str]', default => sub { $ENV{AWS_ROLE_ARN} });
  has WebIdentityTokenFile => (is => 'rw', isa => 'Maybe[Str]', default => sub { $ENV{AWS_WEB_IDENTITY_TOKEN_FILE} });
  has RoleSessionName => (is => 'rw', isa => 'Maybe[Str]', default => sub { $ENV{AWS_ROLE_SESSION_NAME} || 'aws-sdk-perl' });

  sub _refresh {
    my $self = shift;

    return if $self->expiration >= time;
    if( ! defined $self->WebIdentityTokenFile || ! defined $self->RoleArn){
      return;
    }
    my $WebIdentityTokenFile = $self->WebIdentityTokenFile;
    my $WebIdentityToken = do {
        local $/;
        open my $file_handle, "<", $WebIdentityTokenFile or die "Cannot open token file '$WebIdentityTokenFile' for reading: $!";
        <$file_handle>;
    };
    my $RoleArn = $self->RoleArn;
    my $RoleSessionName = $self->RoleSessionName;

    my $result = $self->sts->AssumeRoleWithWebIdentity(
      RoleSessionName => $self->RoleSessionName,
      RoleArn => $self->RoleArn,
      WebIdentityToken => $WebIdentityToken
    );
    my $creds = $self->actual_creds($result->Credentials);
    $self->expiration(DateTime::Format::ISO8601->parse_datetime($result->Credentials->Expiration)->epoch);
  }
1;