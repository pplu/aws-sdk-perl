package Paws::Credential::AssumeRoleWithSAML;
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

  has actual_creds => (is => 'rw');

  sub access_key {
    my $self = shift;
    $self->_refresh;
    $self->actual_creds->AccessKeyId;
  }

  sub secret_key {
    my $self = shift;
    $self->_refresh;
    $self->actual_creds->SecretAccessKey;
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

  has DurationSeconds => (is => 'rw', isa => 'Maybe[Int]');
  has Policy => (is => 'rw', isa => 'Maybe[Str]');

  has RoleArn => (is => 'rw', isa => 'Str', required => 1);
  has PrincipalArn => (is => 'rw', isa => 'Str', required => 1);
  has SAMLAssertion => (is => 'rw', isa => 'Str', required => 1);

  sub _refresh {
    my $self = shift;

    return if $self->expiration >= time;

    my $result = $self->sts->AssumeRoleWithSAML(
      RoleArn => $self->RoleArn,
      PrincipalArn => $self->PrincipalArn,
      SAMLAssertion => $self->SAMLAssertion,
      (defined $self->DurationSeconds) ? (DurationSeconds => $self->DurationSeconds) : (),
      (defined $self->Policy) ? (Policy => $self->Policy) : (),
    );

    my $creds = $self->actual_creds($result->Credentials);

    $self->expiration(DateTime::Format::ISO8601->parse_datetime($result->Credentials->Expiration)->epoch);
  }

  no Moose;

1;
