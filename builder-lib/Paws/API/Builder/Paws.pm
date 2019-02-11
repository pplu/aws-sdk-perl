package Paws::API::Builder::Paws {
  use Template;
  use Data::Printer;
  use Data::Dumper;
  use Paws::API::ServiceToClass;

  use autodie;

  use Moose;

  sub version {
    '0.39';
  }

  sub services {
    my $self = shift;
    [ Paws::API::ServiceToClass::classes ];
  }

  sub save_class {
    my ($self, $class_name, $content) = @_;
    return if (not defined $class_name);
    my @class_parts = split /\:\:/, $class_name;
    my $class_file_name = "auto-lib/" . ( join '/', @class_parts ) . ".pm";
    if (0) {#-e $class_file_name) { #not doing this, because there are unimportant differences in files
      {
      my $read_content = read_text($class_file_name);
      die "Non matching for $class_file_name: going to store $content\nvs stored: $read_content" if ($read_content ne $content);
      }
    }
    pop @class_parts;
    eval { mkdir "auto-lib/" . ( join '/', @class_parts ) };
    open my $file, ">", $class_file_name;
    print $file $content;
    close $file;
  }

  sub process_template {
    my ($self, $template, $vars) = @_;
    my $tt = Template->new;
    my $output = '';
    $tt->process(\$template, $vars, \$output) || die $tt->error();
    return $output;
  }

  sub process {
    my ($self) = @_;
    my $class = $self->process_template($self->pawspm_template,
      { c => $self }
    );
    $self->save_class('Paws', $class);
  }

  sub contributors {
    my $self = shift;
    my $contributions;
    {
      local $/ = undef;
      open my $file, '<', 'README.md';
      my $content = <$file>;
      close $file;
      ($contributions) = ($content =~ m/Thanks\n================\n(.*)$/ms);
    }
    return $contributions;
  }

  has pawspm_template => (is => 'ro', isa => 'Str', default => q!
[%- -%]
package Paws::SDK::Config;

use Moose;
use Moose::Util::TypeConstraints;
use Paws::Net::CallerRole;
use Paws::Credential;

coerce 'Paws::Net::CallerRole',
  from 'Str',
   via {
     my $class = $_; 
     Paws->load_class($class);
     return $class->new() 
   };

coerce 'Paws::Credential',
  from 'Str',
   via { 
     my $class = $_;
     Paws->load_class($class);
     return $class->new();
   };

has region => (
  is => 'rw',
  isa => 'Str|Undef',
  default => sub { undef }
);

has caller => (
  is => 'rw',
  does => 'Paws::Net::CallerRole', 
  lazy => 1,
  default => sub { 
    Paws->load_class('Paws::Net::Caller');
    Paws::Net::Caller->new 
  },
  coerce => 1
); 
has credentials => (
  is => 'rw',
  does => 'Paws::Credential',
  lazy => 1,
  default => sub {
    Paws->load_class('Paws::Credential::ProviderChain'); 
    Paws::Credential::ProviderChain->new 
  },
  coerce => 1
);
has immutable => (
  is => 'rw',
  isa => 'Bool',
  default => 0,
);
__PACKAGE__->meta->make_immutable;
1;

package Paws;

our $VERSION = '[% c.version %]';

use Moose;
use MooseX::ClassAttribute;
use Moose::Util qw//;
use Module::Runtime qw//;

use Paws::API::JSONAttribute;
use Paws::API::Base64Attribute;

use Paws::API;
use Moose::Util::TypeConstraints;

has _class_prefix => (isa => 'Str', is => 'ro', default => 'Paws::');

coerce 'Paws::SDK::Config',
  from 'HashRef',
   via {
     Paws::SDK::Config->new($_);
};
has config => (isa => 'Paws::SDK::Config', is => 'rw', coerce => 1, default => sub { Paws->default_config });

# Holds a fully constructed Paws instance so continuous calls to get_self are all done over the
# same (implicit) object. This happens when the user calls Paws->service, as opposed to $instance->service
class_has _default_object => (is => 'rw', isa => 'Paws');

class_has default_config => (is => 'rw', isa => 'Paws::SDK::Config', default => sub { Paws::SDK::Config->new });

sub load_class {
  my (undef, @classes) = @_;
  foreach my $class (@classes) {
    Module::Runtime::require_module($class);
    # immutability is a global setting that will affect all instances
    $class->meta->make_immutable if (Paws->default_config->immutable);
  }
}

sub available_services {
  my ($self) = @_;
  $self = $self->get_self;

  my $skip_list = {
    API => 1, Credential => 1, Exception => 1, RegionInfo => 1,
  };
  require Module::Find;
  my $class_prefix = $self->_class_prefix;
  return grep { not $skip_list->{ $_ } } map { $_ =~ s/^$class_prefix//; $_ } Module::Find::findsubmod Paws;
}

sub get_self {
  my $self = shift;
  if (not ref($self)) {
    if (not defined Paws->_default_object) {
      Paws->_default_object(Paws->new(config => Paws->default_config));
    }
    return Paws->_default_object;
  } else {
    return $self;
  }
}

sub class_for_service {
  my ($self, $service_name) = @_;
  $self = $self->get_self;

  my $class = $self->_class_prefix . $service_name;
  $self->load_class($class);
  return $class;
}

sub service {
  my ($self, $service_name, %constructor_params) = @_;
  $self = $self->get_self;

  $constructor_params{ region } = $self->config->region if (not exists $constructor_params{ region });
  $constructor_params{ caller } = $self->config->caller if (not exists $constructor_params{ caller });
  $constructor_params{ credentials } = $self->config->credentials if (not exists $constructor_params{ credentials });

  my $class = $self->class_for_service($service_name);
  my $instance = $class->new(
    %constructor_params
  );

  return $instance;
}

sub preload_service {
  my (undef, $service, @operations) = @_;

  # load the service class
  my $service_class = Paws->class_for_service($service);

  @operations = ('*') if (@operations == 0);

  my %calculated_operations = ();
  foreach my $operation (@operations) {
    if ($operation eq '*') {
      $calculated_operations{ $_ } = 1 for ($service_class->operations);
    } elsif ($operation =~ m/\*/) {
      die "Wildcards not implemented yet";
    } else {
      $calculated_operations{ $operation } = 1;
    }
  }

  _preload_operations($service_class, keys %calculated_operations);
}

sub _preload_operations {
  my ($service_class, @operations) = @_;

  foreach my $operation (@operations) {
    # Each operation has two classes associated:

    # 1st preload the classes that represent the arguments for a call
    my $op_params_class = "${service_class}::${operation}";
    _preload_scanclass($op_params_class);

    # 2nd preload the classes that represent responses from the call
    _preload_scanclass($op_params_class->_returns) if ($op_params_class->_returns);
  }
}

sub _preload_scanclass {
  my ($class) = @_;

  # If the class is already loaded, we really don't want to be rescanning it
  # this avoid infinite recursion on DynamoDB, for example
  return if (Moose::Util::find_meta($class));

  Paws->load_class($class);

  foreach my $att ($class->meta->get_all_attributes){
    my $tconst = $att->type_constraint;

    if ($tconst->isa('Moose::Meta::TypeConstraint::Class')) {
      # Any attribute that isa class will need to be inspected
      _preload_scanclass($tconst->class);
    } elsif ($tconst->isa('Moose::Meta::TypeConstraint::Parameterized') and
             $tconst->type_parameter->isa('Moose::Meta::TypeConstraint::Class')) {
      # those attributes can also be found in parametrized 
      # type constraints (ArrayRef[...], Hashref[...])
      _preload_scanclass($tconst->type_parameter->class);
    }
  }
}

1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Paws - A Perl SDK for AWS (Amazon Web Services) APIs

=head1 SYNOPSIS

  use Paws;
  my $obj = Paws->service('...');
  my $res = $obj->MethodCall(Arg1 => $val1, Arg2 => $val2);
  print $res->AttributeFromResult;

=head1 DESCRIPTION

Paws is an attempt to develop an always up-to-date SDK that covers all possible AWS services.

=head1 STATUS

Please consider the SDK is beta quality. The intention of publishing to CPAN is having the community
find the SDK, try it, give feedback, etc. Some services are still not working, and some heavy
refactoring will still be done to the internals. The external interface to SDK users will try to be 
kept stable, and changes to it should be notified via ChangeLog

=head1 SUPPORTED SERVICES

[% FOREACH service = c.services.sort %]
L<Paws::[% service %]>
[% END %]

=head1 SERVICES CLASSES

Each service in AWS (EC2, CloudFormation, SQS, SNS, etc) has a service class. The service class represents the properties that a web service has (how to call it, what methods it has, how to authenticate, etc). When a service class is instantiated with the right properties (region, if needed, credentials, caller, etc), it will be able to make calls to the service.

Service classes are obtained through

  my $service_class = Paws->class_for_service('Service');
  my $service_object = $service_class->new(region => '...', caller => ...)

Although they are seldom needed. 99% of the time you want service objects directly obtained with the ->service method (read next section) since you have to write less code.

=head1 SERVICE OBJECTS

Each Service Object represents the ability to call methods on a service endpoint. Those endpoints are
either global, or bound to a region depending on the service. Also, each object can be customized 
with a credential provider, that tells the object where to obtain credentials for the call (you can
get them from the environment, from the filesystem, from the AWS Instance Profile, STS, etc.

To obtain a service object, call the C<< ->service >> method

  use Paws;
  my $service = Paws->service('Service');

You can pass extra parameters if the service is bound to a region:

  my $service = Paws->service('Service', region => 'us-east-1');

These parameters are basically passed to the service class constructor

=head1 AUTHENTICATION

Service classes by default try to authenticate with a chained authenticator. The chained authenticator tries to first find credentials in your environment variables B<AWS_ACCESS_KEY> and B<AWS_SECRET_KEY> (note that B<AWS_ACCESS_KEY_ID> and B<AWS_SECRET_ACCESS_KEY> are also scanned for compatibility with the official SDKs). Second, it will look for credentials in the B<default> profile of the B<~/.aws/credentials> or the file in B<AWS_CONFIG_FILE> env variable (an ini-formatted file). Last, if no environment variables are found, then a call to retrieve Role credentials is done. If your instance is running on an AWS instance, and has a Role assigned, the SDK will automatically retrieve credentials to call any services that the instances Role permits.

Please never burn credentials into your code. That's why the methods for passing an explicit access key and secret key are not documented.

So, instantiating a service with

  my $ec2 = Paws->service('EC2', region => 'eu-west-1');

we get an service object that will try to authenticate with environment, credential file, or an instance role.

When instantiating a service object, you can also pass a custom credential provider:

  use Paws::Credential::STS;

  my $cred_provider = Paws::Credential::STS->new(
    Name => 'MyName',
    DurationSeconds => 900,
    Policy => '{"Version":"2012-10-17","Statement":[{"Effect": "Allow","Action":["ec2:DescribeInstances"],"Resource":"*"}]}'
  );
  my $ec2 = Paws->service('EC2', credentials => $cred_provider, region => 'eu-west-1');

In this example we instance a service object that uses the STS service to create temporary credentials that only let the service object call DescribeInstances.

Paws bundles some pre-baked credential providers:

L<Paws::Credential::ProviderChain> - Gets credentials from a list of providers, returning the first provider to return credentials

L<Paws::Credential::Environment> - Gets credentials from environment variables

L<Paws::Credential::File> - Gets credentials from AWS SDK config files

L<Paws::Credential::InstanceProfile> - Gets credentials from the InstanceProfile (Role) of the running instance

L<Paws::Credential::STS> - Gets temporary credentials from the Secure Token Service

L<Paws::Credential::AssumeRole> - Gets temporary credentials with AssumeRole

L<Paws::Credential::AssumeRoleWithSAML> - Gets temporary credentials with AssumeRoleWithSAML

L<Paws::Credential::Explicit> - Gets credentials specified in the code

=head1 Using Service objects (Calling APIs)

Each API call is represented as a method call with the same name as the API call. The arguments to the call are passed as lists (named parameters) to the call. So, to call DescribeInstances on the EC2 service:

  my $result = $ec2->DescribeInstances;

The DescribeInstances call has no required parameters, but if needed, we can pass them in (you can look them up in L<Paws::EC2> and see detail in L<Paws::EC2::DescribeInstances>

  my $result = $ec2->DescribeInstances(MaxResults => 5);

If the parameter is an Array:

  my $result = $ec2->DescribeInstances(InstanceIds => [ 'i-....' ]);

If the parameter to be passed in is a complex value (an object)

  my $result = $ec2->DescribeInstances(Filters => [ { Name => '', Value => '' } ])

=head1 RETURN VALUES

The AWS APIs return nested datastructures in various formats. The SDK converts these datastructures into objects that can then be used as wanted.

  my $private_dns = $result->Reservations->[0]->Instances->[0]->PrivateDnsName;

=head1 CONFIGURATION

Paws instances have a configuration. The configuration is basically a specification of values that will be passed to the service method each time
it's called

  # the credentials and the caller keys accept an instance or the name of a class as a 
  # string (the class will be loaded and the constructor of that class will be automatically called
  my $paws1 = Paws->new(config => { credentials => MyCredProvider->new, region => 'eu-west-1' });
  my $paws2 = Paws->new(config => { caller => 'MyCustomCaller' });
  
  # EC2 service with MyCredProvider in eu-west-1
  my $ec2 = $paws1->service('EC2');

  # DynamoDB service with MyCustomCaller in us-east-1. region is needed because it's not in the config
  my $ddb = $paws2->service('DynamoDB', region => 'us-east-1');

  # DynamoDB in eu-west-1 with MyCredProvider
  my $other_ddb = $paws1->service('DynamoDB');

The attributes that can be configured are:

=head3 credentials

Accepts a string which value is the name of a class, or an already instantiated object. If a string is passed, the class will be loaded, and the 
constructor called (without parameters). Also, the resulting instance or the already instantiated object has to have the L<Paws::Credential> role.

=head3 caller

Accepts a string which value is the name of a class, or an already instantiated object. If a string is passed, the class will be loaded, and the 
constructor called (without parameters). Also, the resulting instance or the already instantiated object has to have the L<Paws::Net::CallerRole> role.

=head3 region

A string representing the region that service objects will be instantiated with. Most services need a region specified, meaning that you will have to specify the desired region every time you call the B<service> method.

  my $cfn = Paws->service('CloudFormation', region => 'eu-west-1');

Some services (like IAM) are global, so they don't need their region specified:

  my $iam = Paws->service('IAM');

A special service is STS, which by default has a global endpoint, but you can also specify regional endpoints

  my $global_sts = Paws->service('STS');
  my $regional_sts = Paws->service('STS', region => 'eu-west-1');

=head3 endpoint

Paws needs to send HTTP requests to different URLS (endpoints) depending on the service and the region. URLs are normally automatically derived by specifying the region, but for special cases, like pointing to "fake-sqs" or "fake-s3" services, you can:

  Paws->service('SQS', endpoint => 'http://localhost:3000', region => 'eu-west-1');

Some services, like the MachineLearning predictor API want you to specify a custom endpoint:

  my $model = $ml->GetMLModel(MLModelId => $model_id);
  my $predictor = Paws->service('ML', endpoint => $model->EndpointInfo->EndpointUrl, region => 'eu-west-1');
  $predictor->...

=head1 Pluggability

=head2 Credential Provider Pluggability

Credential classes need to have the Role L<Paws::Credential> applied. This obliges them to implement access_key, secret_key and session_token methods. 
The obtention of this data can be customized to be retrieved whereever the developer considers useful (files, environment, other services, etc). Take
a look at the Paws::Credential::XXXX namespace to find already implemented credential providers.

The credential objects' access_key, secret_key and session_token methods will be called each time an API call has to be signed.

=head2 Caller Pluggability

Caller classes need to have the Role L<Paws::Net::CallerRole> applied. This obliges them to implement the do_call method. Tests use this interface to
mock calls and responses to the APIs (without using the network). 

The caller instance is responsable for doing the network Input/Output with some type of HTTP request library, and returning the Result from the API.

These callers are included and supported in Paws:

L<Paws::Net::Caller>: Uses HTTP::Tiny. It's the default caller for Paws

L<Paws::Net::MojoAsyncCaller>: Experimental asyncronous IO caller. Paws method calls return futures instead of results

L<Paws::Net::LWPCaller>: Uses LWP. LWP supports HTTPS proxies, so Paws can call AWS from behind an HTTPS proxy.

L<Paws::Net::FurlCaller>: Uses Furl: a lightning fast HTTP client

=head1 Optimization

=head2 Preloading services and operations

  Paws->preload_service($service)
  Paws->preload_service($service, @methods)

Paws manages a lot of objects that are loaded dynamically as needed. This causes high memory consumption if you do operations with Paws in a forked 
environment because each child loads a separate copy of all the classes it needs to do the calls. Paws provides the preload_service operation. Call
it with the name of the service before forking off so your server can benefit from copy on write memory sharing. The parent class will load all the
classes needed so that child processes don't need to load them.

Some classes have lot's of calls, so preloading them can be quite expensive. If you call preload_service with a list of the methods you will call,
it will only load classes needed for those calls. This is specially useful for L<Paws::EC2>, for example.

Preloading doesn't change the usage of Paws. That means that all services and methods still work without any change, just that if they're not preloaded
they'll be loaded at runtime.

=head2 Immutabilizing classes

Paws objects are programmed with L<Moose> (the Modern Perl Object Framework). Moose objects can be immutibilized so that method calls perform better,
at the cost of startup time. If you deem your usage of Paws to be long-lived, you can call

  Paws->default_config->immutable(1);

as early as possible in the code. Very important that the immutable flag be activated before calling preload_service.

=head1 AUTHOR

    Jose Luis Martinez
    CPAN ID: JLMARTIN
    CAPSiDE
    jlmartinez@capside.com

=head1 SEE ALSO

L<http://aws.amazon.com/documentation/>

L<https://github.com/pplu/aws-sdk-perl>

=head1 BUGS and SOURCE

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=head1 COPYRIGHT and LICENSE

Copyright (c) 2015 by Jose Luis Martinez Torres

This code is distributed under the Apache 2 License. The full text of the license can be found in the LICENSE file included with this module.

=head1 CONTRIBUITIONS

[% c.contributors %]

=cut
!);



}
1;
