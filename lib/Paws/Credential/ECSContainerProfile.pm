package Paws::Credential::ECSContainerProfile;
  use JSON::MaybeXS;
  use Moose;
  use DateTime::Format::ISO8601;
  use URI;
  with 'Paws::Credential';

  has container_local_uri => (
    is => 'ro',
    isa => 'Str|Undef',
    default => sub {
      $ENV{ AWS_CONTAINER_CREDENTIALS_RELATIVE_URI }
    }
  );

  has metadata_url => (
    is => 'ro',
    isa => 'Str|Undef',
    lazy => 1,
    default => sub {
      my $self = shift;
      return undef if (not defined $self->container_local_uri);
      my $url = URI->new("http://169.254.170.2");
      $url->path($self->container_local_uri);
      return $url->as_string;
    }
  );

  has timeout => (is => 'ro', isa => 'Int', default => 1);

  has ua => (
    is => 'ro',
    lazy => 1,
    default => sub {
      my $self = shift;
      use HTTP::Tiny;
      HTTP::Tiny->new(
        agent => 'AWS Perl SDK',
        timeout => $self->timeout,
      );
    }
  );

  has expiration => (
    is => 'rw',
    isa => 'Int',
    default => sub { 0 }
  );

  has actual_creds => (is => 'rw', default => sub { {} });

  around are_set => sub {
    my ($orig, $self) = @_;
    return 0 if (not defined $self->container_local_uri);
    return $self->$orig;
  };

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
    $self->actual_creds->{Token};
  }

  #TODO: Raise exceptions if HTTP get didn't return success
  sub _refresh {
    my $self = shift;

    return if $self->expiration >= time;
    return if ! $self->metadata_url;

    my $ua = $self->ua;

    my $r = $ua->get($self->metadata_url);
    return unless $r->{success};
    return unless $r->{content};

    my $json = eval { decode_json($r->{content}) };
    if ($@) { die "Error in JSON from metadata URL" }

    $self->actual_creds($json);
    $self->expiration(DateTime::Format::ISO8601->parse_datetime($json->{Expiration})->epoch);
  }

  no Moose;
1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Paws::Credential::ECSContainerProfile

=head1 SYNOPSIS

  use Paws::Credential::ECSContainerProfile;

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::ECSContainerProfile->new(
      metadata_url => 'http://localhost:8000/security-credentials',
      timeout => 5,
    )
  });

=head1 DESCRIPTION

The InstanceProfile credential provider is used to call retrieve AWS credentials from conatiners running on AWS ECS

When running in an ECS Container on  AWS, if said container has a Role attached to it, Paws
can retrieve short-term credentials (and refresh them when needed) from the AWS provided "metadata service".

=head2 metadata_url: Str

The url where credentials will be retrieved.  Defaults to documented endpoint for container profile retrieval.  Should not
normally need to be overriden.

=head2 timetout: Int

Number of seconds to wait before timinig out a connection to the metadata service. It defaults to 1 second, as
the metadata service is almost local, and very fast responding. Note that if set too high, and the metadata
service is not present (not running on an AWS instance), the connection has to time out

=head2 ua

A user agent that has a C<get> method. Defaults to HTTP::Tiny

=cut
