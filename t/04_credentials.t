#!/usr/bin/env perl

use lib 't/lib';
use Paws::Credential::Environment;
use Paws::Credential::InstanceProfile;
use Paws::Credential::ProviderChain;
use Data::Printer;
use Test::More;
use Test::Exception;
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
  my $creds = Paws::Credential::ProviderChain->new(providers => [ 'Test::CustomCredentials', 'Paws::Credentail::Enviromnent' ]);
  ok($creds->are_set, 'Creds are set');
  cmp_ok($creds->access_key, 'eq', 'CustomAK', 'Access Key short style');
  cmp_ok($creds->secret_key, 'eq', 'CustomSK', 'Secret Key short style');
 
}

done_testing;
