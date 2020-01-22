#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';
use if (!-e 'META.json'), lib => './auto-lib';

use English qw(-no-match-vars);
use Carp;
use Test::More;
use URI::Escape;

use Paws;
use TestRequestCaller;

Paws->default_config->caller(TestRequestCaller->new);
Paws->default_config->credentials('Test::CustomCredentials');

my $idname = 'testid';
my $vaultname = 'testvault';
my $glacier = Paws->service('Glacier', region => 'us-west-2');

my %md5_methods = (
  'AbortMultipartUpload' => {
    AccountId => $idname,
    UploadId =>
'19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ',
    VaultName => $vaultname,
  },
  'AbortVaultLock' => {
    AccountId => $idname,
    VaultName => $vaultname,
  },
  'AddTagsToVault' => {
    Tags => {
      Examplekey1 => 'examplevalue1',
      Examplekey2 => 'examplevalue2'
    },
    AccountId => $idname,
    VaultName => $vaultname,
  },
  'CompleteMultipartUpload' => {
    AccountId => $idname,
    ArchiveSize => 3145728,
    Checksum =>
      '9628195fcdbcbbe76cdde456d4646fa7de5f219fb39823836d81f0cc0e18aa67',
    UploadId =>
'19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ',
    VaultName => $vaultname,
  },
  'CreateVault' => {
    AccountId => $idname,
    VaultName => $vaultname,
  },
  'DeleteArchive' => {
    AccountId => $idname,
    ArchiveId => 'testarchive',
    VaultName => $vaultname,
  },
  'DeleteVault' => {
    AccountId => $idname,
    VaultName => $vaultname,
  },
  'DeleteVaultAccessPolicy' => {
    AccountId => $idname,
    VaultName => $vaultname,
  },
  'DeleteVaultNotifications' => {
    AccountId => $idname,
    VaultName => $vaultname,
  },
  'DescribeJob' => {
    AccountId => $idname,
    JobId =>
'zbxcm3Z_3z5UkoroF7SuZKrxgGoDc3RloGduS7Eg-RO47Yc6FxsdGBgf_Q2DK5Ejh18CnTS5XW4_XqlNHS61dsO4Cn',
    VaultName => $vaultname,
  },
  'DescribeVault' => {
    AccountId => $idname,
    VaultName => $vaultname,
  },
  'GetDataRetrievalPolicy' => {
    AccountId => $idname,
  },
  'GetJobOutput' => {
    AccountId => $idname,
    JobId =>
'zbxcm3Z_3z5UkoroF7SuZKrxgGoDc3RloGduS7Eg-RO47Yc6FxsdGBgf_Q2DK5Ejh18CnTS5XW4_XqlNHS61dsO4CnMW',
    Range => '',
    VaultName => $vaultname,
  },
  'GetVaultAccessPolicy' => {
    AccountId => $idname,
    VaultName => $vaultname,
  },
  'GetVaultLock' => {
    AccountId => $idname,
    VaultName => $vaultname,
  },
  'GetVaultNotifications' => {
    AccountId => $idname,
    VaultName => $vaultname,
  },
  'InitiateJob' => {
    AccountId => $idname,
    JobParameters => {
      Description => 'My inventory job',
      Format => 'CSV',
      SNSTopic =>
'arn:aws:sns:us-west-2:111111111111:Glacier-InventoryRetrieval-topic-Example',
      Type => 'inventory-retrieval'
    },
    VaultName => $vaultname,
  },
  'InitiateMultipartUpload' => {
    AccountId => $idname,
    PartSize  => 1048576,
    VaultName => $vaultname,
  },
  'InitiateMultipartUpload' => {
    AccountId => $idname,
    PartSize  => 1048576,
    VaultName => $vaultname,
  },
  'InitiateVaultLock' => {
    AccountId => $idname,
    Policy => {
      Policy =>
'{"Version":"2012-10-17","Statement":[{"Sid":"Define-vault-lock","Effect":"Deny","Principal":{"AWS":"arn:aws:iam::999999999999:root"},"Action":"glacier:DeleteArchive","Resource":"arn:aws:glacier:us-west-2:999999999999:vaults/examplevault","Condition":{"NumericLessThanEquals":{"glacier:ArchiveAgeinDays":"365"}}}]}'
    },
    VaultName => $vaultname,
  },
  'ListJobs' => {
    AccountId => $idname,
    VaultName => $vaultname,
  },
  'ListMultipartUploads' => {
    AccountId => $idname,
    VaultName => $vaultname,
  },
  'ListParts' => {
    AccountId => $idname,
    UploadId =>
'OW2fM5iVylEpFEMM9_HpKowRapC3vn5sSL39_396UW9zLFUWVrnRHaPjUJddQ5OxSHVXjYtrN47NBZ-khxOjyEXAMPLE',
    VaultName => $vaultname,
  },
  'ListProvisionedCapacity' => {
    AccountId => $idname,
  },
  'ListTagsForVault' => {
    AccountId => $idname,
    VaultName => $vaultname,
  },
  'ListVaults' => {
    AccountId => $idname,
    Limit => '',
    Marker => ''
  },
  'PurchaseProvisionedCapacity' => {
    AccountId => $idname,
  },
  'RemoveTagsFromVault' => {
    TagKeys => [ 'examplekey1', 'examplekey2' ],
    AccountId => $idname,
    VaultName => $vaultname,
  },
  'SetDataRetrievalPolicy' => {
    Policy => {
      Rules => [
        {
          BytesPerHour => 10737418240,
          Strategy     => 'BytesPerHour'
        }
      ]
    },
    AccountId => $idname,
  },
  'SetVaultAccessPolicy' => {
    AccountId => $idname,
    Policy => {
      Policy =>
'{"Version":"2012-10-17","Statement":[{"Sid":"Define-owner-access-rights","Effect":"Allow","Principal":{"AWS":"arn:aws:iam::999999999999:root"},"Action":"glacier:DeleteArchive","Resource":"arn:aws:glacier:us-west-2:999999999999:vaults/examplevault"}]}'
    },
    VaultName => $vaultname,
  },
  'SetVaultNotifications' => {
    AccountId => $idname,
    Body => 'part1',
    Checksum => 'c06f7cd4baacb087002a99a5f48bf953',
    Range => 'bytes 0-1048575/*',
    UploadId =>
'19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ',
    VaultName => $vaultname,
    VaultNotificationConfig => {
      Events =>
        [ 'ArchiveRetrievalCompleted', 'InventoryRetrievalCompleted' ],
      SNSTopic => 'arn:aws:sns:us-west-2:012345678901:mytopic'
    }
  },
  'UploadArchive' => {
    AccountId => $idname,
    ArchiveDescription => 'testing',
    Body => 'example-data-to-upload',
    Checksum => 'beb0fe31a1c7ca8c6c04d574ea906e3f97b31fdca7571defb5b44dca89b5af60',
    VaultName => $vaultname,
  },
  'UploadMultipartPart' => {
    AccountId => $idname,
    Body => 'part1',
    Checksum => 'c06f7cd4baacb087002a99a5f48bf953',
    Range => 'bytes 0-1048575/*',
    UploadId =>
'19gaRezEXAMPLES6Ry5YYdqthHOC_kGRCT03L9yetr220UmPtBYKk-OssZtLqyFu7sY1_lR7vgFuJV6NtcV5zpsJ',
    VaultName => $vaultname,
  },
);

# x-amz-glacier-version
foreach my $method (qw/AbortMultipartUpload AbortVaultLock AddTagsToVault CompleteMultipartUpload CreateVault DeleteArchive DeleteVault DeleteVaultAccessPolicy DeleteVaultNotifications DescribeJob DescribeVault GetDataRetrievalPolicy GetJobOutput GetVaultAccessPolicy GetVaultLock GetVaultNotifications InitiateJob InitiateMultipartUpload InitiateVaultLock ListJobs ListMultipartUploads ListParts ListProvisionedCapacity ListTagsForVault ListVaults PurchaseProvisionedCapacity RemoveTagsFromVault SetDataRetrievalPolicy SetVaultAccessPolicy SetVaultNotifications UploadArchive UploadMultipartPart/) {
  my $response;
  eval { $response = $glacier->$method(%{ $md5_methods{$method} });
  } or do {
    diag qq[Error creating object: $@];
  };

  ## The HTTP headers should contain a x-amz-glacier-version header
    if ($response) {
      ok($response->header('x-amz-glacier-version'), "Glacier $method header contains x-amz-glacier-version header");
    } else {
      fail("Header doesn't exist as it is undefined.");
    }
  };


done_testing;
