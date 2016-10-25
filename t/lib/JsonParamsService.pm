package Paws::JsonParamsService::Method1;
  use Moose;

  has response => (isa => 'Str', is => 'ro', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Method1');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::JsonParamsService::Method1Return');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;
package Paws::JsonParamsService::Object;
  use Moose;
  has Att1 => (is => 'ro', isa => 'Str');
  has Att2 => (is => 'ro', isa => 'Str');
1;
package Paws::JsonParamsService::MapOfArrayOfObject;
  use Moose;
  with 'Paws::API::StrToObjMapParser';

  has Map => (is => 'ro', isa => 'HashRef[ArrayRef[Paws::JsonParamsService::Object]]');
1;
package Paws::JsonParamsService::MapOfArrayOfString;
  use Moose;
  with 'Paws::API::StrToNativeMapParser';

  has Map => (is => 'ro', isa => 'HashRef[ArrayRef[Str|Undef]]');
1;
package Paws::JsonParamsService::Method1Return;
  use Moose;
  has StringAttribute => (is => 'ro', isa => 'Str');
  has IntegerAttribute => (is => 'ro', isa => 'Int');
  has BooleanAttribute => (is => 'ro', isa => 'Bool');

  has ObjectAttribute => (is => 'ro', isa => 'Paws::JsonParamsService::Object');

  has ArrayOfString => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ArrayOfObject => (is => 'ro', isa => 'ArrayRef[Paws::JsonParamsService::Object]');

  has MapOfString => (is => 'ro', isa => 'HashRef[Str]');
  has MapOfObject => (is => 'ro', isa => 'HashRef[Paws::JsonParamsService::Object]');

  has MapOfArrayOfString => (is => 'ro', isa => 'Paws::JsonParamsService::MapOfArrayOfString');
  has MapOfArrayOfObject => (is => 'ro', isa => 'Paws::JsonParamsService::MapOfArrayOfObject');
1;
package Paws::RestJsonParamsService;
  use Moose;
  sub service { 'jsonparams' }
  sub version { '2016-09-25' }
  sub target_prefix { 'JsonParams' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller', 'Paws::Net::RestJsonResponse';

  sub Method1 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::JsonParamsService::Method1', @_);
    return $self->caller->do_call($self, $call_object);
  }
1;
package Paws::JsonParamsService;
  use Moose;
  sub service { 'jsonparams' }
  sub version { '2016-09-25' }
  sub target_prefix { 'JsonParams' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  sub Method1 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::JsonParamsService::Method1', @_);
    return $self->caller->do_call($self, $call_object);
  }
1;
package Paws::JsonParamsService::Method2;
  use Moose;

  has response => (isa => 'Str', is => 'ro', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Method2Result');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::JsonParamsService::Method1Return');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'Method2Result');
1;
package Paws::QueryFlattenedParamsService;
  use Moose;
  sub service { 'queryflattenedparams' }
  sub version { '2016-09-25' }
  sub flattened_arrays { 1 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
       sub { defined $_[0]->http_status and $_[0]->http_status == 403 and $_[0]->code eq 'RequestThrottled' },
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  sub Method2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::JsonParamsService::Method2', @_);
    return $self->caller->do_call($self, $call_object);
  }
1;
package Paws::QueryParamsService;
  use Moose;
  sub service { 'queryparams' }
  sub version { '2010-03-31' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::QueryCaller', 'Paws::Net::XMLResponse';

  sub Method2 {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::JsonParamsService::Method2', @_);
    return $self->caller->do_call($self, $call_object);
  }
1;
