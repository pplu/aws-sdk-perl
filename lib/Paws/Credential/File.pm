package Paws::Credential::File;
  use Moose;
  use Config::INI::Reader;
  use File::HomeDir;
  use JSON::MaybeXS qw/decode_json/;
  use Paws::Exception;

  has profile => (is => 'ro', default => sub { $ENV{ AWS_DEFAULT_PROFILE } or 'default' });

  has credentials_file => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    if (defined $ENV{AWS_CONFIG_FILE}){
      return $ENV{AWS_CONFIG_FILE};
    } else {
      return $self->path . '/' . $self->file_name;
    }
  });

  has file_name => (is => 'ro', default => sub { 'credentials' });
  has path => (is => 'ro', default => sub {
    return (File::HomeDir->my_home || '') . '/.aws/';
  });

  has _ini_contents => (is => 'ro', isa => 'HashRef', lazy => 1, default => sub {
    my $self = shift;
    my $ini_file = $self->credentials_file;
    return {} if (not -e $ini_file);
    my $ini = Config::INI::Reader->read_file($ini_file);
    return $ini;
  });

  has _profile => (is => 'ro', isa => 'HashRef', lazy => 1, default => sub {
    my $self = shift;
    my $profile = $self->profile;
    return $self->_ini_contents->{ $profile } || {};
  });

  has _from_cred_process => (is => 'ro', isa => 'HashRef', lazy => 1, default => sub {
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
    return $creds;
  });

  has credential_process => (is => 'ro', lazy => 1, default => sub {
    my $self = shift;
    return $self->_profile->{ credential_process };
  });

  sub access_key {  
    my $self = shift;

    if (defined $self->credential_process) {
      return $self->_from_cred_process->{ AccessKeyId };
    } else {
      return $self->_profile->{ aws_access_key_id };
    }
  }

  sub secret_key {  
    my $self = shift;

    if (defined $self->credential_process) {
      return $self->_from_cred_process->{ SecretAccessKey };
    } else {
      return $self->_profile->{ aws_secret_access_key };
    }
  }

  sub session_token { 
    my $self = shift;

    if (defined $self->credential_process) {
      return $self->_from_cred_process->{ SessionToken };
    } else {
      return $self->_profile->{ aws_session_token };
    }
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
