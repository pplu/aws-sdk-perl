package Paws::Credential::File;
  use Moose;
  use Config::INI::Reader;
  use File::HomeDir;

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

  has access_key => (is => 'ro', lazy => 1, default => sub {  
    my $self = shift;
    my $ini_section = $self->profile;
    my $ak = $self->_ini_contents->{ $ini_section }->{ aws_access_key_id };
    return $ak;
  });
  has secret_key => (is => 'ro', lazy => 1, default => sub {  
    my $self = shift;
    my $ini_section = $self->profile;
    my $sk = $self->_ini_contents->{ $ini_section }->{ aws_secret_access_key };
    return $sk;
  });
  has session_token => (is => 'ro', lazy => 1, default => sub { 
    my $self = shift;
    my $ini_section = $self->profile;
    my $st = $self->_ini_contents->{ $ini_section }->{ aws_session_token };
    return $st;
  });

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
