#!/usr/bin/env perl

use strict;
use warnings;

use Test::More;
use Paws;
use JsonParamsService;
use TestGivenResponse;
use Data::Dumper;

my $aws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

my $s = $aws->service('JsonParamsService',
  region => 'fake_region',
  caller => 'TestGivenResponse',
);

{ 
  my $r = $s->Method1(response => '{}');
  isa_ok($r, 'Paws::JsonParamsService::Method1Return');
}

{ 
  my $r = $s->Method1(response => '{"StringAttribute":"String","IntegerAttribute":42,"BooleanAttribute":true}');
  isa_ok($r, 'Paws::JsonParamsService::Method1Return');
  cmp_ok($r->StringAttribute, 'eq', 'String');
  cmp_ok($r->IntegerAttribute, '==', 42);
  cmp_ok($r->BooleanAttribute, '==', 1);
}
{ 
  my $r = $s->Method1(response => '{"ArrayOfString":["Str1","Str2"],"ArrayOfObject":[{"Att1":"Att1","Att2":"Att2"}]}');
  isa_ok($r, 'Paws::JsonParamsService::Method1Return');
  cmp_ok($r->ArrayOfString->[0], 'eq', 'Str1');
  cmp_ok($r->ArrayOfString->[1], 'eq', 'Str2');
  cmp_ok($r->ArrayOfObject->[0]->Att1, 'eq', 'Att1');
  cmp_ok($r->ArrayOfObject->[0]->Att2, 'eq', 'Att2');
}
{ 
  my $r = $s->Method1(response => '{"ObjectAttribute":{"Att1":"Att1","Att2":"Att2"}}');
  isa_ok($r, 'Paws::JsonParamsService::Method1Return');
  cmp_ok($r->ObjectAttribute->Att1, 'eq', 'Att1');
  cmp_ok($r->ObjectAttribute->Att2, 'eq', 'Att2');
}
{ 
  my $r = $s->Method1(response => '{"ArrayOfString":["Pos1",null,"Pos3"]}');
  isa_ok($r, 'Paws::JsonParamsService::Method1Return');
  cmp_ok($r->ArrayOfString->[0], 'eq', 'Pos1');
  ok(not(defined $r->ArrayOfString->[1]));
  cmp_ok($r->ArrayOfString->[2], 'eq', 'Pos3');
}
{ 
  my $r = $s->Method1(response => '{"MapOfArrayOfString":{"Key1":["Pos1","Pos2"]}}');
  isa_ok($r, 'Paws::JsonParamsService::Method1Return');
  cmp_ok($r->MapOfArrayOfString->Map->{Key1}->[0], 'eq', 'Pos1');
  cmp_ok($r->MapOfArrayOfString->Map->{Key1}->[1], 'eq', 'Pos2');
}
{ 
  my $r = $s->Method1(response => '{"MapOfArrayOfObject":{"Key1":[{"Att1":"Att1","Att2":"Att2"}]}}');
  isa_ok($r, 'Paws::JsonParamsService::Method1Return');
  cmp_ok($r->MapOfArrayOfObject->Map->{Key1}->[0]->Att1, 'eq', 'Att1');
  cmp_ok($r->MapOfArrayOfObject->Map->{Key1}->[0]->Att2, 'eq', 'Att2');
}

done_testing;
