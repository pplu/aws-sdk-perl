#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;
use Paws;
use JsonParamsService;
use TestGivenResponse;
use Data::Dumper;

my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

my $s = $aws->service('QueryFlattenedParamsService',
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
      <ArrayOfString>
        <member>Str1</member>
        <member>Str2</member>
      </ArrayOfString>
      <ArrayOfObject>
        <member>
        <Att1>Att1</Att1>
        <Att2>Att2</Att2>
        </member>
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
      <ArrayOfString>
        <member>Pos1</member>
        <member/>
        <member>Pos3</member>
      </ArrayOfString>
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
