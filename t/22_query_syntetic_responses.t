#!/usr/bin/env perl

use strict;
use warnings;

use lib 't/lib';

use Test::More;
use Paws;
use JsonParamsService;
use TestGivenResponse;
use Data::Dumper;

my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

my $s = $aws->service('QueryParamsService',
  region => 'fake_region',
  caller => 'TestGivenResponse',
);

{ 
  my $r = $s->Method2(response => q'
  <Method2Response xmlns="http://sns.amazonaws.com/doc/2010-03-31/">
    <Method2Result>
    </Method2Result>
    <ResponseMetadata>
      <RequestId>384ac68d-3775-11df-8963-01868b7c937a</RequestId>
    </ResponseMetadata>
  </Method2Response>
');
  isa_ok($r, 'Paws::JsonParamsService::Method1Return');
}

{ 
  my $r = $s->Method2(response => q'
  <Method2Response xmlns="http://sns.amazonaws.com/doc/2010-03-31/">
    <Method2Result>
      <StringAttribute>String</StringAttribute>
      <IntegerAttribute>42</IntegerAttribute>
      <BooleanAttribute>1</BooleanAttribute>
    </Method2Result>
    <ResponseMetadata>
      <RequestId>384ac68d-3775-11df-8963-01868b7c937a</RequestId>
    </ResponseMetadata>
  </Method2Response>
');
  isa_ok($r, 'Paws::JsonParamsService::Method1Return');
  cmp_ok($r->StringAttribute, 'eq', 'String');
  cmp_ok($r->IntegerAttribute, '==', 42);
  cmp_ok($r->BooleanAttribute, '==', 1);
}
{ 
  my $r = $s->Method2(response => q'
  <Method2Response xmlns="http://sns.amazonaws.com/doc/2010-03-31/">
    <Method2Result>
      <ArrayOfString>Str1</ArrayOfString>
      <ArrayOfString>Str2</ArrayOfString>
      <ArrayOfObject>
        <Att1>Att1</Att1>
        <Att2>Att2</Att2>
      </ArrayOfObject>
    </Method2Result>
    <ResponseMetadata>
      <RequestId>384ac68d-3775-11df-8963-01868b7c937a</RequestId>
    </ResponseMetadata>
  </Method2Response>
');
  isa_ok($r, 'Paws::JsonParamsService::Method1Return');
  cmp_ok($r->ArrayOfString->[0], 'eq', 'Str1');
  cmp_ok($r->ArrayOfString->[1], 'eq', 'Str2');
  cmp_ok($r->ArrayOfObject->[0]->Att1, 'eq', 'Att1');
  cmp_ok($r->ArrayOfObject->[0]->Att2, 'eq', 'Att2');
}
{ 
  my $r = $s->Method2(response => q'
  <Method2Response xmlns="http://sns.amazonaws.com/doc/2010-03-31/">
    <Method2Result>
      <ObjectAttribute>
        <Att1>Att1</Att1>
        <Att2>Att2</Att2>
      </ObjectAttribute>
    </Method2Result>
    <ResponseMetadata>
      <RequestId>384ac68d-3775-11df-8963-01868b7c937a</RequestId>
    </ResponseMetadata>
  </Method2Response>
');
  isa_ok($r, 'Paws::JsonParamsService::Method1Return');
  cmp_ok($r->ObjectAttribute->Att1, 'eq', 'Att1');
  cmp_ok($r->ObjectAttribute->Att2, 'eq', 'Att2');
}
{ 
  my $r = $s->Method2(response => q'
  <Method2Response xmlns="http://sns.amazonaws.com/doc/2010-03-31/">
    <Method2Result>
      <ArrayOfString>Pos1</ArrayOfString>
      <ArrayOfString/>
      <ArrayOfString>Pos3</ArrayOfString>
    </Method2Result>
    <ResponseMetadata>
      <RequestId>384ac68d-3775-11df-8963-01868b7c937a</RequestId>
    </ResponseMetadata>
  </Method2Response>
');
  isa_ok($r, 'Paws::JsonParamsService::Method1Return');
  cmp_ok($r->ArrayOfString->[0], 'eq', 'Pos1');
  ok(not(defined $r->ArrayOfString->[1]));
  cmp_ok($r->ArrayOfString->[2], 'eq', 'Pos3');
}

done_testing;
