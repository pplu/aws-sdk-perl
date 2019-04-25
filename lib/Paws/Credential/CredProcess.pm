package Paws::Credential::CredProcess;
  use Moose;
  use JSON::MaybeXS qw/decode_json/;
  use Paws::Exception;
  use DateTime::Format::ISO8601;

  has credential_process => (is => 'ro', isa => 'Str', required => 1);

  has expiration => (
    is => 'rw',
    isa => 'Int|Undef',
    lazy => 1,
    default => sub { 0 }
  );

  has actual_creds => (
    is => 'ro',
    isa => 'HashRef',
    builder => '_build_actual_creds',
    clearer => '_clear_actual_creds',
    lazy => 1
  );

  sub _build_actual_creds {
    my $self = shift;
    my $creds;
    my $rc;
    {
      local $/ = undef;
      open (my $fh, '-|', $self->credential_process);
      $creds = <$fh>;
      close $fh;
      $rc = $?;
    }
    Paws::Exception::CredentialProcess->throw("credential_process returned non-zero code") if ($rc != 0);
    $creds = decode_json($creds);
    Paws::Exception::CredentialProcess->throw("credential_process didn't return a Version key") if (not exists $creds->{ Version }); 
    Paws::Exception::CredentialProcess->throw("credential_process only understands Version 1") if ($creds->{ Version } != 1); 

    my $expiry = $creds->{ Expiration };
    if (defined $expiry) {
      $self->expiration(DateTime::Format::ISO8601->parse_datetime($expiry)->epoch)
    } else {
      $self->expiration(undef);
    }

    return $creds;
  }

  sub access_key {
    my $self = shift;
    $self->_refresh;
    $self->actual_creds->{ AccessKeyId };
  }

  sub secret_key {
    my $self = shift;
    $self->_refresh;
    $self->actual_creds->{ SecretAccessKey }
  }

  sub session_token {
    my $self = shift;
    $self->_refresh;
    $self->actual_creds->{ SessionToken };
  }

  sub _refresh {
    my $self = shift;

    return if not defined $self->expiration;
    return if $self->expiration >= time;
    $self->_clear_actual_creds;
  }

  with 'Paws::Credential';

  no Moose;
1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Paws::Credential::File

=head1 SYNOPSIS

  use Paws::Credential::File;

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::File->new(
      profile => 'profile1',
      credentials_file => '/etc/aws_system_credentials', 
    )
  });
  # will open /etc/aws_system_credentials

  
  my $paws = Paws->new(config => {
    credentials => Paws::Credential::File->new(
      profile => 'profile1',
      file_name => 'my_creds', 
    )
  });
  # will open $HOME/.aws/my_creds

  my $paws = Paws->new(config => {
    credentials => Paws::Credential::File->new(
      profile => 'profile1',
      dir => '/etc/', 
    )
  });
  # will open /etc/credentials


=head1 DESCRIPTION

The File credential provider is to read credentials from AWS SDK config files

=head2 profile: Str

The section in the ini file where credentials will be looked up:

Defaults to the environment variable C<AWS_DEFAULT_PROFILE>, and if that is not defined, to "default"

=head2 credentials_file: Str

The path of the ini file to open

Defaults to the path + file_name (C<$HOME/.aws/credentials> by default) if the environment variable AWS_CONFIG_FILE doesn't exist

=head2 path: Str

Path to the ini file

Defaults to C<$HOME/.aws>

=head2 file_name: Str

Name of the ini file

Defaults to C<credentials>

=cut
