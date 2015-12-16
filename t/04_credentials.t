#!/usr/bin/env perl

use lib 't/lib';
use Paws;
use Paws::Credential::Environment;
use Paws::Credential::InstanceProfile;
use Paws::Credential::ProviderChain;
use Paws::Credential::File;
use Test::More;
use Test::Exception;
use Test::Warnings;
use Test04::StubUAForMetadata;
use Test04::StubUANoMetadata;

sub reset_env_creds {
  delete $ENV{'AWS_ACCESS_KEY_ID'};
  delete $ENV{'AWS_SECRET_ACCESS_KEY'};
  delete $ENV{'AWS_ACCESS_KEY'};
  delete $ENV{'AWS_SECRET_KEY'};
}

reset_env_creds;

{
  my $creds = Paws::Credential::Environment->new;
  ok(not($creds->are_set), 'No creds when no ENV');
}

{
  $ENV{'AWS_ACCESS_KEY_ID'} = 'botoAK';
  $ENV{'AWS_SECRET_ACCESS_KEY'} = 'botoSK';

  my $creds = Paws::Credential::Environment->new;
  ok($creds->are_set, 'Creds are set');
  cmp_ok($creds->access_key, 'eq', 'botoAK', 'Access Key boto style');
  cmp_ok($creds->secret_key, 'eq', 'botoSK', 'Secret Key boto style');
}

reset_env_creds;

{
  $ENV{'AWS_ACCESS_KEY'} = 'AK';
  $ENV{'AWS_SECRET_KEY'} = 'SK';

  my $creds = Paws::Credential::Environment->new;
  ok($creds->are_set, 'Creds are set');
  cmp_ok($creds->access_key, 'eq', 'AK', 'Access Key short style');
  cmp_ok($creds->secret_key, 'eq', 'SK', 'Secret Key short style');
}

reset_env_creds;

{
  my $creds = Paws::Credential::InstanceProfile->new(ua => Test04::StubUAForMetadata->new);
  cmp_ok($creds->access_key, 'eq', 'AK1', 'Access Key 1');
  cmp_ok($creds->secret_key, 'eq', 'SK1', 'Secret Key 1');
  cmp_ok($creds->session_token, 'eq', 'TK1', 'Token 1');
  
  sleep 2;

  cmp_ok($creds->access_key, 'eq', 'AK2', 'Access Key 2');
  cmp_ok($creds->secret_key, 'eq', 'SK2', 'Secret Key 2');
  cmp_ok($creds->session_token, 'eq', 'TK2', 'Token 2');

  sleep 2;

  dies_ok { $creds->access_key } 'Exception thrown when garbage arrives';
}

{
  my $creds = Paws::Credential::InstanceProfile->new(ua => Test04::StubUANoMetadata->new);

  ok(not($creds->are_set), 'No Creds for no Role');
}


reset_env_creds;

{
  my $creds = Paws::Credential::ProviderChain->new(providers => [ 'Test::CustomCredentials', 'Paws::Credentail::Environment' ]);
  ok($creds->are_set, 'Creds are set');
  cmp_ok($creds->access_key, 'eq', 'CustomAK', 'Access Key short style');
  cmp_ok($creds->secret_key, 'eq', 'CustomSK', 'Secret Key short style');
 
}

## File provider testing
reset_env_creds;

{
  my $creds = Paws::Credential::File->new(
    path => 't/'
  );
  ok(not($creds->are_set), 'No creds when no file is present');
}

# Test for users not having HOME
{
  my $old_home = $ENV{'HOME'};
  $ENV{'HOME'} = '';

  my $creds = Paws::Credential::File->new;
  ok(not($creds->are_set), 'File: no credentials if no $HOME');

  $ENV{'HOME'} = $old_home;
}

{
	my $creds = Paws::Credential::File->new(
		path => 't/04_credentials/'
	);
	ok($creds->are_set, 'File: Attribute path works correctly');
	cmp_ok($creds->access_key, 'eq', 'defaultAK', 'File: default Access Key loaded correctly');
	cmp_ok($creds->secret_key, 'eq', 'defaultSK', 'File: default Secret Key loaded correctly');
}

{
	my $creds = Paws::Credential::File->new(
		path => 't/04_credentials/',
		profile => 'testprofile'
	);
	ok($creds->are_set, 'File: Attributes path and profile work correctly');
	cmp_ok($creds->access_key, 'eq', 'testAK', 'File: named profile Access Key loaded correctly');
	cmp_ok($creds->secret_key, 'eq', 'testSK', 'File: named profile Secret Key loaded correctly');
}

{
	my $creds = Paws::Credential::File->new(
		credentials_file => 't/04_credentials/credentials.alternate',
	);
	ok($creds->are_set, 'File: credentials_file attribute works correctly');
	cmp_ok($creds->access_key, 'eq', 'alternateAK', 'File: alternate Access Key loaded correctly');
	cmp_ok($creds->secret_key, 'eq', 'alternateSK', 'File: alternate Secret Key loaded correctly');
}

{
	my $creds = Paws::Credential::File->new(
		path => 't/04_credentials/',
		file_name => 'credentials.alternate',
	);
	ok($creds->are_set, 'File: file_name attribute works correctly');
	cmp_ok($creds->access_key, 'eq', 'alternateAK', 'File: alternate Access Key loaded correctly');
	cmp_ok($creds->secret_key, 'eq', 'alternateSK', 'File: alternate Secret Key loaded correctly');
}

{
	$ENV{AWS_DEFAULT_PROFILE} = 'alternate';
	$ENV{AWS_CONFIG_FILE} = 't/04_credentials/credentials.alternate';
	my $creds = Paws::Credential::File->new;

	ok($creds->are_set, 'File: Attributes from environment variables');
	cmp_ok($creds->access_key, 'eq', 'alternateprofileAK',
		'File: alternate using ENV variables Access Key loaded correctly');

	cmp_ok($creds->secret_key, 'eq', 'alternateprofileSK',
		'File: alternate using ENV variables Secret Key loaded correctly');

	delete $ENV{AWS_DEFAULT_PROFILE};
	delete $ENV{AWS_CONFIG_FILE};
}

done_testing;
