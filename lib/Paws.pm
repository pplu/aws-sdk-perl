package Paws::SDK::Config;

use Moose;
use Moose::Util::TypeConstraints;

role_type('Paws::Credential');
role_type('Paws::Net::CallerRole');

has caller      => (is => 'ro', isa => 'Str|Paws::Net::CallerRole', default => 'Paws::Net::Caller'); 
has credentials => (is => 'ro', isa => 'Str|Paws::Credential', default => 'Paws::Credential::ProviderChain');

__PACKAGE__->meta->make_immutable;
1;

package Paws;

our $VERSION = 0.08;

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
  Module::Runtime::require_module($_) for (@classes);
}

sub available_services {
  my ($self) = @_;
  require Module::Find;
  my $class_prefix = $self->_class_prefix;
  return grep { $_ ne 'API' } map { $_ =~ s/^$class_prefix//; $_ } Module::Find::findsubmod Paws;
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

  $self->_handle_string_or_instance(\%constructor_params, 'caller');
  $self->_handle_string_or_instance(\%constructor_params, 'credentials');

  my $class = $self->class_for_service($service_name);
  my $instance = $class->new(
    %constructor_params
  );

  return $instance;
}

sub _string_to_instance {
  my ($self, $string) = @_;
  # String can be either a string with the class name in it
  # or an object. We want to construct an instance if it's a string
  # but if it's already an object, we leave it untouched
  if (not ref($string)) {
    $self->load_class($string);
    return $string->new;
  } else {
    return $string;
  }
}

# Takes 
sub _handle_string_or_instance {
  my ($self, $params, $for_param) = @_;

  if (defined $params->{ $for_param }) {
    $params->{ $for_param } = $self->_string_to_instance($params->{ $for_param });
  } else {
    $params->{ $for_param } = $self->_string_to_instance($self->config->$for_param);
  }
  return $params;
}

1;
### main pod documentation begin ###

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

Please take a look at classes in the Paws::XXX namespace

=head1 SERVICES CLASSES

Each service in AWS (EC2, CloudFormation, SQS, SNS, etc) has a service class. The service class represents the properties that a web service has (how to call it, what methods it has, how to authenticate, etc). When a service class is instanced with the right properties (region, if needed, credentials, caller, etc), it will be able to make calls to the service.

Service classes are obtained through

  my $service_class = Paws->class_for_service('Service');
  my $service_object = $service_class->new(region => '...', caller => ...)

Although they are seldom needed. 99% of the time you want service objects directly obtained with the ->service method (read next section) since you have to write less code.

=head1 SERVICE OBJECTS

Each Service Object represents the ability to call methods on a service endpoint. Those endpoints are
either global, or bound to a region depending on the service. Also, each object can be customized 
with a credential provider, that tells the object where to obtain credentials for the call (you can
get them from the environment, from the filesystem, from the AWS Instance Profile, STS, etc.

To obtain a service object, call the ->service method

  use Paws;
  my $service = Paws->service('Service');

You can pass extra parameters if the service is bound to a region:

  my $service = Paws->service('Service', region => 'us-east-1');

These parameters are basically passed to the service class constructor

=head1 AUTHENTICATION

Service classes by default try to authenticate with a chained autheticator. The chained authenticator tries to first find credentials in your enviroinment variables B<AWS_ACCESS_KEY> and B<AWS_SECRET_KEY> (note that B<AWS_ACCESS_KEY_ID> and B<AWS_SECRET_ACCESS_KEY> are also scanned for compatibility with the official SDKs). Second, it will look for credentials in the B<default> profile of the B<~/.aws/credentials> (an ini-formatted file). Last, if no environment variables are found, then a call to retrieve Role credentials is done. If your instance is running on an AWS instance, and has a Role assigned, the SDK will automatically retrieve credentials to call any services that the instances Role permits.

Please never burn credentials into your code. That's why the methods for passing an explicit access key and secret key are not documented.

So, instancing a service with

  my $ec2 = Paws->service('EC2', region => 'eu-west-1');

we get an service object that will try to authenticate with environment, credential file, or an instance role.

When instancing a service object, you can also pass a custom credential provider:

  use Paws::Credential::STS;

  my $cred_provider = Paws::Credential::STS->new(
    Name => 'MyName',
    DurationSeconds => 900,
    Policy => '{"Version":"2012-10-17","Statement":[{"Effect": "Allow","Action":["ec2:DescribeInstances"],"Resource":"*"}]}'
  );
  my $ec2 = Paws->service('EC2', credentials => $cred_provider, region => 'eu-west-1');

In this example we instance a service object that uses the STS service to create temporary credentials that only let the service object call DescribeInstances.

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

=head1 AUTHOR

    Jose Luis Martinez
    CPAN ID: JLMARTIN
    CAPSiDE
    jlmartinez@capside.com

=head1 SEE ALSO

L<http://aws.amazon.com/documentation/>

L<https://github.com/pplu/aws-sdk-perl>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=head1 COPYRIGHT and LICENSE

Copyright (c) 2015 by Jose Luis Martinez Torres

This code is distributed under the GNU Lesser General Public License, Version 3. The full text of the license can be found in the LICENSE file included with this module.

=cut
