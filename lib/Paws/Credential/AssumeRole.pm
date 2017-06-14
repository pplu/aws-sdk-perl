package Paws::Credential::AssumeRole;
  use Moose;
  use DateTime::Format::ISO8601;
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
    Paws->service('STS', region => $self->sts_region);
  });

  has DurationSeconds => (is => 'rw', isa => 'Maybe[Int]');
  has Policy => (is => 'rw', isa => 'Maybe[Str]');

  has ExternalId => (is => 'rw', isa => 'Maybe[Str]');
  has RoleArn => (is => 'rw', isa => 'Str', required => 1);
  has RoleSessionName => (is => 'rw', isa => 'Str', required => 1);
  
  sub _refresh {
    my $self = shift;

    return if $self->expiration >= time;

    my $result = $self->sts->AssumeRole(
      RoleSessionName => $self->RoleSessionName,
      RoleArn => $self->RoleArn,
      (defined $self->ExternalId) ? (ExternalId => $self->ExternalId) : (),
      (defined $self->DurationSeconds) ? (DurationSeconds => $self->DurationSeconds) : (),
      (defined $self->Policy) ? (Policy => $self->Policy) : (),
    );

    my $creds = $self->actual_creds($result->Credentials);
    $self->expiration(DateTime::Format::ISO8601->parse_datetime($result->Credentials->Expiration)->epoch);
  }

  no Moose;
1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Paws::Credential::AssumeRole

=head1 SYNOPSIS

  use Paws::Credential::AssumeRole;

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::AssumeRole->new(
      DurationSeconds => 60,
      RoleArn => 'arn:....',
      RoleSessionName => 'MySession',
    )
  });

=head1 DESCRIPTION

The AssumeRole provider is used to obtain temporary credentials with the AssumeRole STS call. These credentials
can further be limited by a Policy document.

Credentials are refreshed with a re-call to STS when they have expired

=head2 DurationSeconds: Int (optional)

The number of seconds for which the credentials will be valid

=head2 Policy: Str (optional)

A string with an IAM policy that gets merged with the roles capabilities

=head2 ExternalId: Str (optional)

A string with the external id of the role

=head2 RoleArn: Str

The arn of the role to be assumed

=head2 RoleSessionName: Str

The name of the session (will appear in CloudTrail logs, for example)

=cut
